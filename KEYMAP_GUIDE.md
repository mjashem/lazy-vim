# Complete LazyVim Keymap Guide for Fast Development

> Quick Reference: Press `<leader>` (Space) anytime to see available keymaps
> Press `<leader>?` to see all buffer keymaps

---

## Table of Contents

1. [File Navigation & Fuzzy Search](#1-file-navigation--fuzzy-search)
2. [Buffer Management](#2-buffer-management)
3. [Window Management](#3-window-management)
4. [Fast Movement](#4-fast-movement)
5. [Fast Editing](#5-fast-editing)
6. [Search & Replace](#6-search--replace)
7. [LSP / Code Intelligence](#7-lsp--code-intelligence)
8. [Terminal](#8-terminal)
9. [Git Integration](#9-git-integration)
10. [Tab Management](#10-tab-management)
11. [Quickfix / Location List](#11-quickfix--location-list)
12. [Macros & Registers](#12-macros--registers)
13. [Folds](#13-folds)
14. [Session & Persistence](#14-session--persistence)
15. [Undo / Redo](#15-undo--redo)
16. [Toggles](#16-toggles)
17. [AI Assistant - Claude Code](#17-ai-assistant---claude-code)
18. [Special Operations](#18-special-operations)
19. [Your Custom Keymaps](#19-your-custom-keymaps)
20. [Pro Tips](#20-pro-tips)

---

## 1. FILE NAVIGATION & FUZZY SEARCH

### Finding Files (Telescope/FZF built into LazyVim)

| Key | Action |
|-----|--------|
| `<leader><space>` | Find files (root dir) |
| `<leader>ff` | Find files (root dir) |
| `<leader>fF` | Find files (current dir) |
| `<leader>fg` | Find git files |
| `<leader>fr` | Recent files |
| `<leader>fR` | Recent files (current dir) |
| `<leader>fb` | Buffers list |
| `<leader>fB` | All buffers |
| `<leader>fc` | Find config file |
| `<leader>fp` | Projects |

### Quick File Jumps (Harpoon)

| Key | Action |
|-----|--------|
| `<leader>ha` | Add file to harpoon |
| `<leader>he` | Toggle harpoon menu |
| `<leader>hh` | Go to harpoon file 1 |
| `<leader>hj` | Go to harpoon file 2 |
| `<leader>hk` | Go to harpoon file 3 |
| `<leader>hl` | Go to harpoon file 4 |
| `<leader>hH` | Previous harpoon file |
| `<leader>hL` | Next harpoon file |

---

## 2. BUFFER MANAGEMENT

### Buffer Navigation

| Key | Action |
|-----|--------|
| `<S-h>` / `[b` | Previous buffer |
| `<S-l>` / `]b` | Next buffer |
| `<leader>bb` | Switch to other buffer |
| `<leader>` (leader+space) | Switch to other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bD` | Delete buffer and window |
| `<leader>bo` | Delete other buffers |
| `<leader>bW` | Wipeout ALL buffers (custom) |
| `<leader>bl` | Delete buffers to left |
| `<leader>bp` | Toggle pin |
| `<leader>bP` | Delete non-pinned |
| `<leader>br` | Delete buffers to right |

---

## 3. WINDOW MANAGEMENT

### Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Go to left window |
| `<C-j>` | Go to lower window |
| `<C-k>` | Go to upper window |
| `<C-l>` | Go to right window |

### Window Operations

| Key | Action |
|-----|--------|
| `<leader>-` | Split horizontally |
| `<leader>\|` | Split vertically |
| `<leader>wd` | Delete window |
| `<leader>w=` | Equalize windows (custom) |
| `<leader>wm` | Maximize/toggle window |
| `<leader>uZ` | Toggle zoom mode |

### Move Windows (Custom)

| Key | Action |
|-----|--------|
| `<leader>wH` | Move window far left |
| `<leader>wJ` | Move window to bottom |
| `<leader>wK` | Move window to top |
| `<leader>wL` | Move window far right |

### Window Resizing

| Key | Action |
|-----|--------|
| `<C-Up>` | Increase height |
| `<C-Down>` | Decrease height |
| `<C-Left>` | Decrease width |
| `<C-Right>` | Increase width |

---

## 4. FAST MOVEMENT

### Basic Motion (Always Available)

| Key | Action |
|-----|--------|
| `h` / `j` / `k` / `l` | Left / Down / Up / Right |
| `w` / `b` | Next/previous word |
| `W` / `B` | Next/previous WORD (space-separated) |
| `e` / `ge` | End of word |
| `0` / `^` | Start of line |
| `$` | End of line |
| `gg` / `G` | Start/end of file |
| `{` / `}` | Previous/next paragraph |
| `%` | Jump to matching bracket |

### Fast Jump (Flash - LazyVim built-in)

| Key | Action |
|-----|--------|
| `s` | Flash jump to any location |
| `S` | Flash treesitter jump |
| `r` | Remote flash |

### Line/Screen Position

| Key | Action |
|-----|--------|
| `H` / `M` / `L` | Top/middle/bottom of screen |
| `<C-u>` | Scroll up half screen |
| `<C-d>` | Scroll down half screen |
| `<C-b>` | Scroll up full screen |
| `<C-f>` | Scroll down full screen |
| `zt` / `zz` / `zb` | Scroll line to top/center/bottom |

### Search Navigation

| Key | Action |
|-----|--------|
| `n` / `N` | Next/previous search result |
| `*` / `#` | Search word under cursor (forward/back) |
| `gd` | Go to definition |
| `gr` | Find references |
| `gi` | Go to implementation |
| `gy` | Go to type definition |
| `gD` | Go to declaration |

### Jumps List

| Key | Action |
|-----|--------|
| `<C-o>` | Go to older position |
| `<C-i>` | Go to newer position |
| `` ` `` `` | Jump to mark |
| `<leader>sj` | View jumps list |

---

## 5. FAST EDITING

### Insert Mode Entry

| Key | Action |
|-----|--------|
| `i` | Insert before cursor |
| `a` | Append after cursor |
| `I` | Insert at line start |
| `A` | Append at line end |
| `o` | New line below |
| `O` | New line above |
| `jj` | Exit insert mode (custom) |

### Visual Mode Selection

| Key | Action |
|-----|--------|
| `v` | Visual (character) |
| `V` | Visual line |
| `<C-v>` | Visual block |
| `gv` | Reselect last visual |

### Text Objects (Inside/Around)

| Key | Action |
|-----|--------|
| `ci"` | Change inside quotes |
| `da(` | Delete around parentheses |
| `yi[` | Yank inside brackets |
| `ca{` | Change around braces |
| `cit` | Change inside tag |
| `das` | Delete around sentence |

Available text objects:
- `w` - word, `W` - WORD
- `s` - sentence, `p` - paragraph
- `t` - tag, `b` - bracket (same as `(`)
- `"`, `'`, `` ` `` - quotes
- `(`, `[`, `{`, `<` - brackets/braces

### Quick Changes

| Key | Action |
|-----|--------|
| `cw` | Change word |
| `cc` | Change line |
| `C` | Change to end of line |
| `s` | Substitute character |
| `S` | Substitute line |

### Line Operations (Custom)

| Key | Action |
|-----|--------|
| `<leader>yp` | Duplicate line down |
| `<leader>yP` | Duplicate line up |
| `<C-j>` | Move line down |
| `<C-k>` | Move line up |
| `<A-j>` | Move line down (LazyVim) |
| `<A-k>` | Move line up (LazyVim) |

### Yank/Paste (Custom - Black Hole)

| Key | Action |
|-----|--------|
| `d` | Delete (no yank) - custom |
| `c` | Change (no yank) - custom |
| `x` | Delete char (no yank) - custom |
| `y` | Yank (copy) |
| `yy` | Yank line |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `v` + `p` | Paste without yanking selection (custom) |

### Multi-Cursor (Visual Block)

| Key | Action |
|-----|--------|
| `<C-v>` | Start visual block |
| `I` | Insert at all positions |
| `A` | Append at all positions |
| `c` | Change all selections |

---

## 6. SEARCH & REPLACE

### Basic Search

| Key | Action |
|-----|--------|
| `/` | Search forward |
| `?` | Search backward |
| `*` | Search word under cursor (forward) |
| `#` | Search word under cursor (backward) |
| `n` | Next search result |
| `N` | Previous search result |
| `<CR>` | Clear search highlight (custom) |
| `v` + `/` | Search selected text (custom) |

### Global Search (Grep/Telescope)

| Key | Action |
|-----|--------|
| `<leader>/` | Grep (root dir) |
| `<leader>sg` | Grep (root dir) |
| `<leader>sG` | Grep (current dir) |
| `<leader>sw` | Search word under cursor |
| `<leader>sw` (visual) | Search selection |
| `<leader>sr` | Search and replace (grug-far) |
| `<leader>sB` | Grep open buffers |

### Search in Files

| Key | Action |
|-----|--------|
| `<leader>ss` | LSP symbols |
| `<leader>sS` | LSP workspace symbols |
| `<leader>sd` | Diagnostics |
| `<leader>sD` | Buffer diagnostics |
| `<leader>sR` | Resume last search |

### Other Searches

| Key | Action |
|-----|--------|
| `<leader>sc` | Command history |
| `<leader>sC` | Commands |
| `<leader>sh` | Help pages |
| `<leader>sk` | Keymaps |
| `<leader>sm` | Marks |
| `<leader>s"` | Registers |
| `<leader>sq` | Quickfix list |
| `<leader>st` | Todo comments |

---

## 7. LSP / CODE INTELLIGENCE

### Go To

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Find references |
| `gi` | Go to implementation |
| `gy` | Go to type definition |
| `gD` | Go to declaration |

### Code Actions

| Key | Action |
|-----|--------|
| `<leader>ca` | Code actions |
| `<leader>cr` | Rename symbol |
| `<leader>cR` | Rename file |
| `<leader>cf` | Format document |
| `<leader>cF` | Format injected languages |
| `<leader>cc` | Run code lens |
| `<leader>cC` | Refresh & display code lens |
| `<leader>cl` | LSP info |

### Documentation

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `gK` | Signature help |
| `<C-k>` (insert) | Signature help |

### Diagnostics

| Key | Action |
|-----|--------|
| `]d` / `[d` | Next/previous diagnostic |
| `]e` / `[e` | Next/previous error |
| `]w` / `[w` | Next/previous warning |
| `<leader>cd` | Line diagnostics |
| `<leader>xx` | Diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |

### Call Hierarchy

| Key | Action |
|-----|--------|
| `gai` | Show calls incoming |
| `gao` | Show calls outgoing |

### Symbols

| Key | Action |
|-----|--------|
| `]]` | Next reference |
| `[[` | Previous reference |
| `<a-n>` | Next reference |
| `<a-p>` | Previous reference |

---

## 8. TERMINAL

### Terminal Management

| Key | Action |
|-----|--------|
| `<c-/>` | Toggle terminal (root) |
| `<c-_>` | Toggle terminal (root) alt |
| `<leader>ft` | Terminal (root dir) |
| `<leader>fT` | Terminal (current dir) |
| `<Esc><Esc>` | Exit terminal mode (custom) |

### Terminal Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Navigate to left window |
| `<C-j>` | Navigate to lower window |
| `<C-k>` | Navigate to upper window |
| `<C-l>` | Navigate to right window |

---

## 9. GIT INTEGRATION

### Git Commands (LazyGit)

| Key | Action |
|-----|--------|
| `<leader>gg` | LazyGit (root) |
| `<leader>gG` | LazyGit (cwd) |

### Git File Operations

| Key | Action |
|-----|--------|
| `<leader>gb` | Git blame line |
| `<leader>gf` | Git file history |
| `<leader>gl` | Git log |
| `<leader>gL` | Git log (cwd) |
| `<leader>gs` | Git status |
| `<leader>gS` | Git stash |
| `<leader>gD` | Git diff (origin) |
| `<leader>gd` | Git diff (hunks) |

### Git Browse

| Key | Action |
|-----|--------|
| `<leader>gB` | Git browse (open) |
| `<leader>gY` | Git browse (copy URL) |

### Git Hunks (Inline Diff)

| Key | Action |
|-----|--------|
| `]g` / `[g` | Next/previous git hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hu` | Undo stage hunk |

### GitHub (gh.nvim)

| Key | Action |
|-----|--------|
| `<leader>gi` | GitHub issues (open) |
| `<leader>gI` | GitHub issues (all) |
| `<leader>gp` | GitHub pull requests (open) |
| `<leader>gP` | GitHub pull requests (all) |

---

## 10. TAB MANAGEMENT

| Key | Action |
|-----|--------|
| `<leader><tab><tab>` | New tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>[` | Previous tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>f` | First tab |
| `<leader><tab>l` | Last tab |
| `<leader><tab>o` | Close other tabs |

---

## 11. QUICKFIX / LOCATION LIST

| Key | Action |
|-----|--------|
| `<leader>qo` | Open quickfix (custom) |
| `<leader>qc` | Close quickfix (custom) |
| `[q` / `]q` | Previous/next quickfix |
| `<leader>xl` | Location list |
| `<leader>xL` | Location list (Trouble) |
| `<leader>xq` | Quickfix list |
| `<leader>xQ` | Quickfix list (Trouble) |

---

## 12. MACROS & REGISTERS

### Macros

| Key | Action |
|-----|--------|
| `qa` / `qb` / `qc` | Record macro to register a/b/c |
| `q` | Stop recording |
| `@a` / `@b` / `@c` | Play macro a/b/c |
| `@@` | Replay last macro |

### Registers

| Key | Action |
|-----|--------|
| `"<register>p` | Paste from register (e.g., `"0p`) |
| `"<register>y` | Yank to register (e.g., `"ay`) |
| `<leader>s"` | View registers |

Common registers:
- `0` - Last yank
- `"` - Last delete/yank
- `*` / `+` - Clipboard
- `a`-`z` - Named registers
- `_` - Black hole (discard)

---

## 13. FOLDS

| Key | Action |
|-----|--------|
| `<leader>z` | Toggle fold (custom) |
| `<leader>Z` | Toggle fold recursively (custom) |
| `<leader>zo` | Open fold (custom) |
| `<leader>zO` | Open fold recursively (custom) |
| `<leader>zc` | Close fold (custom) |
| `<leader>zC` | Close fold recursively (custom) |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `za` | Toggle fold (default) |
| `zo` / `zc` | Open/close fold (default) |

---

## 14. SESSION & PERSISTENCE

| Key | Action |
|-----|--------|
| `<leader>qs` | Restore session |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Don't save session |
| `<leader>qS` | Select session |

---

## 15. UNDO / REDO

| Key | Action |
|-----|--------|
| `u` | Undo |
| `<C-r>` | Redo |
| `<leader>U` | Toggle UndoTree (custom) |
| `<leader>su` | View undo tree |

### Undo Breakpoints (Custom)

Automatic undo stops at:
- Comma `,`
- Period `.`
- Exclamation `!`

---

## 16. TOGGLES (All `<leader>u` prefix)

| Key | Action |
|-----|--------|
| `<leader>uf` | Toggle auto format |
| `<leader>uF` | Toggle auto format (buffer) |
| `<leader>us` | Toggle spelling |
| `<leader>uw` | Toggle wrap |
| `<leader>uL` | Toggle relative numbers |
| `<leader>ul` | Toggle line numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uh` | Toggle inlay hints |
| `<leader>ug` | Toggle indent guides |
| `<leader>uz` | Toggle zen mode |
| `<leader>uc` | Toggle conceal level |
| `<leader>uA` | Toggle tabline |
| `<leader>uT` | Toggle treesitter highlight |
| `<leader>ub` | Toggle dark background |
| `<leader>uD` | Toggle dimming |
| `<leader>ua` | Toggle animations |
| `<leader>uS` | Toggle smooth scroll |
| `<leader>uC` | Colorschemes |
| `<leader>ue` | Edgy toggle |
| `<leader>un` | Dismiss notifications |

---

## 17. AI ASSISTANT - CLAUDE CODE

Claude Code (`lazyvim.plugins.extras.ai.claudecode`) provides AI assistance directly in Neovim.

### Enable Claude Code

Add to your config (e.g., [lua/plugins/extras.lua](lua/plugins/extras.lua)):

```lua
return {
  { "LazyVim/LazyVim", opts = { extras = { "ai.claudecode" } } },
}
```

Then run `:Lazy sync` and restart Neovim.

### Main Commands

| Key | Action |
|-----|--------|
| `<leader>a` | Show AI keymap prefix |
| `<leader>ac` | Toggle Claude Code panel |
| `<leader>aa` | Accept diff/suggestion |
| `<leader>ad` | Deny diff/suggestion |
| `<leader>af` | Focus Claude panel |
| `<leader>ar` | Resume conversation |
| `<leader>aC` | Continue conversation |
| `<leader>ab` | Add current buffer to context |
| `<leader>as` | Add file to context |
| `<leader>as` (visual) | Add selection to context |

### How to Use

#### 1. Open Claude Panel
Press `<leader>ac` to open the Claude Code sidebar

#### 2. Chat with Claude
- Type your question or request in the input
- Claude can see your current file if you add it
- Ask for code explanations, refactors, debugging help

#### 3. Add Context
| Action | Key |
|---------|-----|
| Add current file | `<leader>ab` |
| Add specific file | `<leader>as` |
| Add visual selection | Select text, then `<leader>as` |

#### 4. Apply Changes
- Claude may suggest code changes as diffs
- Press `<leader>aa` to accept the diff
- Press `<leader>ad` to deny

### Common Use Cases

**Explain Code**
```
How does this function work?
```

**Debug**
```
I'm getting an error on line 25, can you help?
```

**Refactor**
```
Refactor this function to be more readable
```

**Add Features**
```
Add error handling to this function
```

**Generate Tests**
```
Write unit tests for this function
```

**Ask Questions**
```
What's the difference between let and const in JavaScript?
```

### Tips

1. **Add relevant files** with `<leader>ab` before asking for context-specific help
2. **Select code** first if you want Claude to focus on a specific section
3. **Use visual mode** to select code, then ask Claude to explain/modify it
4. **Accept/Deny** diffs with `<leader>aa` / `<leader>ad`
5. **Focus panel** with `<leader>af` to quickly switch to the chat

### Example Workflow

1. Open a file you're working on
2. Press `<leader>ab` to add it to context
3. Press `<leader>ac` to open Claude
4. Type: "Find bugs in this code and suggest fixes"
5. Review the suggestions
6. Press `<leader>aa` to apply changes you like

---

## 18. SPECIAL OPERATIONS

| Key | Action |
|-----|--------|
| `<leader>sa` | Select all (custom) |
| `<leader>fn` | New file |
| `<C-s>` | Save file |
| `<leader>qq` | Quit all |
| `<leader>?` | Show buffer keymaps |
| `<leader>l` | Open Lazy |
| `<leader>L` | LazyVim changelog |

### Command Mode

| Key | Action |
|-----|--------|
| `:` | Command mode |
| `<C-f>` (cmd) | Edit command in window |
| `<C-j>` (cmd) | Next history |
| `<C-k>` (cmd) | Previous history |

---

## 19. YOUR CUSTOM KEYMAPS

These are the keymaps you've added to your configuration:

### Insert Mode

| Key | Action |
|-----|--------|
| `jj` | Exit insert mode |
| `,` / `.` / `!` | Undo breakpoints |

### Text Operations (Black Hole)

| Key | Action |
|-----|--------|
| `d` / `D` | Delete without yank |
| `c` / `C` | Change without yank |
| `x` / `X` | Delete char/line without yank |
| `v` + `p` | Paste without yanking selection |

### Line Operations

| Key | Action |
|-----|--------|
| `<leader>yp` | Duplicate line down |
| `<leader>yP` | Duplicate line up |
| `<C-j>` | Move line down |
| `<C-k>` | Move line up |

### Selection

| Key | Action |
|-----|--------|
| `<leader>sa` | Select all |
| `v` + `<` / `>` | Dedent/Indent and reselect |

### Search

| Key | Action |
|-----|--------|
| `<CR>` | Clear search highlight |
| `v` + `/` | Search selected text |

### Config Access

| Key | Action |
|-----|--------|
| `<leader>ek` | Edit keymaps |
| `<leader>ev` | Edit vim config |
| `<leader>sv` | Source vim config |

### Window Management

| Key | Action |
|-----|--------|
| `<leader>w=` | Equalize windows |
| `<leader>wH/J/K/L` | Move window to edge |

### Buffer Management

| Key | Action |
|-----|--------|
| `<leader>bW` | Wipeout all buffers |

### Quickfix

| Key | Action |
|-----|--------|
| `<leader>qo` | Open quickfix |
| `<leader>qc` | Close quickfix |

### Terminal

| Key | Action |
|-----|--------|
| `<Esc><Esc>` (in terminal) | Exit terminal mode |

### Folds

| Key | Action |
|-----|--------|
| `<leader>z` prefix | Fold operations |

### Plugins

| Key | Action |
|-----|--------|
| `<leader>U` | Toggle UndoTree |
| `<leader>h` prefix | Harpoon file navigation |

---

## 20. PRO TIPS

### Daily Workflow

1. **Press `<leader>`** anytime to see available keymaps (which-key popup)
2. **Press `<leader>?`** to see all buffer-specific keymaps
3. **Use `s`** for fast jumping anywhere on screen (Flash plugin)
4. **Use Harpoon** (`<leader>ha`) for files you switch between constantly
5. **Use `<leader>sg`** for global text search across files (grep)
6. **Use `<leader>ca`** for code actions (quick fixes, refactors)
7. **Use `gd`** to jump to definitions instantly
8. **Use `<C-/>`** to toggle terminal quickly
9. **Use `<leader>gg`** for all Git operations
10. **Use `<leader>U`** to visualize undo history
11. **Use `<leader>ac`** to open Claude AI assistant for help

### Speed Tips

- Use text objects (`ci"`, `da{`) instead of visual selection
- Use Flash (`s`) for long-distance jumps
- Use Harpoon for your most-used files
- Use `<leader>sa` to select all quickly
- Use `<C-s>` to save without leaving home row
- Use `<leader>cf` to format entire file
- Use `gd` + `<C-o>` to jump back from definitions

### Search Tips

- `*` searches for the word under cursor
- `<leader>sw` searches for word under cursor across files
- `<leader>sg` opens grep search in all files
- `<leader>sr` opens search and replace
- `<CR>` clears search highlight

### Editing Tips

- `d` deletes without yanking (your custom)
- `y` yanks/copies text
- `c` changes text (delete + insert mode)
- `.` repeats last command
- `;` repeats last `f`, `t`, `F`, `T` find

---

## FILES IN YOUR CONFIG

| File | Purpose |
|------|---------|
| `lua/config/keymaps.lua` | Your custom keymaps |
| `lua/plugins/harpoon.lua` | Quick file navigation |
| `lua/plugins/undotree.lua` | Visual undo history |

---

## CHEAT SHEET - MOST USED

| Category | Key | Action |
|----------|-----|--------|
| **Files** | `<leader>ff` | Find files |
| **Files** | `<leader>fr` | Recent files |
| **Files** | `<leader>ha` | Harpoon add |
| **Buffers** | `<S-h>` / `<S-l>` | Prev/next buffer |
| **Windows** | `<C-h/j/k/l>` | Navigate windows |
| **Movement** | `s` | Flash jump |
| **Movement** | `gd` | Go to definition |
| **Edit** | `d` | Delete (no yank) |
| **Edit** | `y` | Yank |
| **Edit** | `p` | Paste |
| **Edit** | `c` | Change |
| **Search** | `<leader>sg` | Grep search |
| **Search** | `*` | Search word |
| **LSP** | `<leader>ca` | Code actions |
| **LSP** | `K` | Hover docs |
| **Git** | `<leader>gg` | LazyGit |
| **AI** | `<leader>ac` | Toggle Claude AI |
| **AI** | `<leader>ab` | Add buffer to Claude |
| **AI** | `<leader>aa` | Accept Claude suggestion |
| **Terminal** | `<c-/>` | Toggle terminal |
| **Save** | `<C-s>` | Save file |
| **Quit** | `<leader>qq` | Quit all |

---

**Restart Neovim and start using these keymaps for maximum speed!**
