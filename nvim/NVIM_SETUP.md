# Editor Feature List

## Look & feel
- Dark theme by default, several other themes you can switch between live from a theme picker
- Theme can sync with the desktop wallpaper/theme and reload live when it changes
- Toggle for a transparent background
- Start screen with a logo and shortcuts: find file, new file, search text, recent files, open settings, restore last session, quit
- Nerd Font icons everywhere (file types, completion items, diagnostics, git)
- Colour codes in files (hex, rgb, hsl, named colours, CSS variables) are shown with their actual colour as the background
- Indent guide lines
- TODO / FIX / NOTE / PERF style comments highlighted in different colours
- Markdown can be rendered in place (headings, lists, tables, code blocks) with a toggle
- Whitespace made visible: tabs shown as a thin bar, trailing spaces as dots
- Current line highlighted, and copied text briefly flashes
- Line numbers are counted from the cursor while moving around, and shown as normal line numbers while typing
- Popups, menus, and input boxes are floating windows with rounded borders
- Command bar is a centered floating popup instead of a fixed bar at the bottom
- Notifications appear as toast popups in the corner and can be dismissed
- Zen mode hides the status bar, line numbers, and tab bar

## Status bar & top bar
- Bottom bar: git branch, added/changed/removed line counts, error/warning counts (centered), file type, % through file, line:column
- Top bar: list of open files (modified ones get a dot), search match count ("3/10"), and the number of selected lines/chars

## Files & navigation
- Fuzzy file finder
- Project-wide text search, plus search limited to open files
- Pickers for open files, colour themes, icons, clipboard history, and man pages
- Sidebar file tree
- Folder view you can edit like text: rename, create, delete, and move files by editing lines
- Tab key cycles through open files
- Split the view vertically or horizontally, move between splits with Ctrl+arrows, resize splits with shortcuts
- The same keys move between editor splits and tmux panes
- Previews the target line while you type a line number to jump to
- Keeps 10 lines of context above/below the cursor while scrolling; half-page scrolls stay centered
- Unlimited undo history kept after closing and reopening files
- Large files automatically get heavy features turned off to stay fast

## Editing
- Auto-closing brackets and quotes
- Toggle comment on a line or selection
- Add, change, or remove surrounding brackets/quotes/tags
- One key toggles a code block between one line and multiple lines (e.g. expand `{a, b, c}` to one item per line and back)
- Code-aware selection: select a whole function, function body, class, class body, argument, or scope
- Indenting a selection keeps it selected
- Delete without overwriting the clipboard
- Ctrl+C copies, Ctrl+V pastes
- Shift+Up/Down selects whole lines
- Find & replace shows a live preview of every change in a split
- Case-insensitive search unless the query contains a capital letter
- Tab width: 2 for Lua, 4 for Python and C++
- Long lines scroll sideways instead of wrapping
- Scratch pad for throwaway notes

## Code intelligence
- Language servers for Python, Lua, and C/C++, installed automatically
- Syntax highlighting based on real parsing, with parsers installed automatically
- Autocomplete popup with icons and documentation, from the language server, words in open files, and file paths
  - Tab opens the popup / goes to the next item, Enter accepts, Esc closes
- AI inline code suggestions (GitHub Copilot), off by default, Shift+Tab accepts
- Errors and warnings shown inline at the end of the line, with gutter icons and underlines (info/hints hidden to reduce noise)
- Lightbulb icon on lines that have quick fixes
- Go to definition, find references (in a peek window), rename symbol, code actions
- Problems panel listing all diagnostics
- Toggle for inline type hints
- Syntax tree viewer
- Format on command (not on save): Python with black, Lua with stylua, C++ with astyle, otherwise the language server

## Git
- Thin coloured bars in the gutter for added/changed/deleted lines (staged changes shown too)
- Optional inline blame for the current line
- Pickers for branches, log, file history, status, diff hunks, and stash
- Quick commands for add, reset, commit, push, status, log, and init. Add/reset/commit ask for input in a centered popup.

## Terminal & running code
- Floating terminal (80% of the screen, centered) that keeps its session when you hide and reopen it
- Terminal can also open as a side panel or a bottom panel
- One key to run the current Python file (`python3 file`)
- One key to compile and run the current C++ file (`g++ -std=c++23 -O2`), output shown in the floating terminal

## Shortcuts
- Everything is on Space-prefixed shortcuts, grouped by category: Find, Git, Code, Open files, Splits, Run, Inlay hints, Notifications, Zen
- After you press Space, a popup shows the available keys
- Space+w saves, Space+q quits
- Typing `W` or `Q` by mistake still saves/quits
