# new-mac-setup

Tmux:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install tmux
```
NeoVim & LazyVim:
ask claude code to setup follow https://www.lazyvim.org/installation or 
```bash
brew install nvim
brew install ripgrep fd lazygit node
# font for nvim display
brew install --cask font-jetbrains-mono-nerd-font
```
<img width="2148" height="1276" alt="image" src="https://github.com/user-attachments/assets/d20f3ba7-5c7e-4e4d-884a-7ce1aedbf0c4" />


| Tool | Used for |
|------|----------|
| ripgrep | Live grep / search across files |
| fd | Fuzzy file finder |
| lazygit | Git UI inside Neovim |
| node | Some LSP servers need it |

Key LazyVim shortcuts to know

| Shortcut | Action |
|----------|--------|
| `<Space>` | Leader key (opens command menu) |
| `<Space>ff` | Find files |
| `<Space>fg` | Live grep |
| `<Space>e` | File explorer |
| `<Space>gg` | LazyGit |

## usage
```
# local
tmux -CC attach

# devserver, can be setup with iterm2
ssh <dev-gpu>.facebook.com -t "tmux -CC attach -t work || tmux -CC new -s work"
```

# company setup
## nvim
```
# backup your old config
mv ~/.config/nvim{,.bak}
# clone this one into the correct spot
git clone git@github.com:seemethere/nvim-config ~/.config/nvim/
```
## claude
```bash
# Or run the setup script directly:
./claude-code-setup.sh
```

| Category | Components |
|----------|------------|
| Skills (9) | skill-creator, google-sheets, google-docs, google-api-proxy, diff-search, calendar, text-to-google-doc, eats, workplace |
| Agents (2) | code-reviewer, coder |
| Commands (3) | save, restore, learn |
| Plugins (1) | 10x-engineer |
| MCP Servers (6) | metamate, workplace, google_docs, google_sheets, google_chat, graphql_query |

Meta org plugins (meta, knowledge_search, code_provenance, llm-rules, trajectory) auto-install on first `claude` launch.
