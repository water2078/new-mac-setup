# new-mac-setup

Tmux:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install tmux
```
NeoVim & LazyVim:
ask claude code to setup https://www.lazyvim.org/installation
```bash
brew install nvim
brew install ripgrep fd lazygit node
# font for nvim display
brew install --cask font-jetbrains-mono-nerd-font
```

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
ssh devgpu011.lco3.facebook.com -t "tmux -CC attach -t work || tmux -CC new -s work"
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
```
claude-templates skill skill-creator install
claude-templates skill google-sheets install
claude-templates skill google-docs install
claude-templates skill google-api-proxy install
claude-templates skill diff-search install
claude-templates skill calendar install
claude-templates skill text-to-google-doc install
claude-templates skill eats install

claude-templates agent code-reviewer install
claude-templates agent coder install

claude-templates command save install
claude-templates command restore install
claude-templates command learn install

claude-templates plugin 10x-engineer install

claude-templates mcp metamate install
```
