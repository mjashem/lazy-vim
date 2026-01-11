-- TypeScript/JavaScript configuration with React Native support
-- Industry standard setup for 2024-2025 using vtsls, eslint_d, and prettierd

return {
  -- ========================================================================
  -- Mason: Auto-install TypeScript/JavaScript tools
  -- Note: Using mason-org/mason.nvim (organization changed from williamboman)
  -- ========================================================================

  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "typescript-language-server", -- vtsls (modern successor to tsserver)
        "eslint_d", -- daemonized ESLint (10-100x faster than eslint)
        "prettierd", -- daemonized Prettier (faster than prettier)
      })
    end,
  },

  -- ========================================================================
  -- LSP: vtsls configuration with inlay hints and React Native support
  -- ========================================================================

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
            },
            typescript = {
              preferences = {
                -- Project-relative imports are monorepo-friendly
                importModuleSpecifier = "project-relative",
                providePrefixAndSuffixTextForRename = true,
                includePackageJsonAutoImports = "on",
              },
              -- Inlay hints for modern developer experience
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              preferences = {
                importModuleSpecifier = "project-relative",
                providePrefixAndSuffixTextForRename = true,
              },
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
      },
    },
  },

  -- ========================================================================
  -- Conform.nvim: Formatting configuration with daemonized tools
  -- ========================================================================

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        javascriptreact = { "prettierd", "eslint_d" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd", "eslint_d" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        graphql = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        less = { "prettierd" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  -- ========================================================================
  -- Neotest: React Native testing support (if neotest is available)
  -- ========================================================================

  {
    "nvim-neotest/neotest",
    optional = true,
    opts = function(_, opts)
      if not opts.adapters then
        opts.adapters = {}
      end
      -- Add jest adapter for React Native projects
      vim.list_extend(opts.adapters, {
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        }),
      })
    end,
  },
}
