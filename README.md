# new-mac-setup

Personal setup scripts for a new Mac — tmux, Neovim/LazyVim, Claude Code, and iTerm2 profiles.

## Prerequisites

Homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Tmux

```bash
brew install tmux
```

### Usage

```bash
# Local — reattach to existing session
tmux -CC attach

# Devserver — attach or create a session (can be set up as an iTerm2 profile)
ssh <dev-gpu>.facebook.com -t "tmux -CC attach -t work || tmux -CC new -s work"
```

## Neovim + LazyVim

```bash
brew install nvim
brew install ripgrep fd lazygit node
brew install --cask font-jetbrains-mono-nerd-font
```

| Tool | Used for |
|------|----------|
| ripgrep | Live grep / search across files |
| fd | Fuzzy file finder |
| lazygit | Git UI inside Neovim |
| node | Some LSP servers need it |

<img width="2148" height="1276" alt="LazyVim screenshot" src="https://github.com/user-attachments/assets/d20f3ba7-5c7e-4e4d-884a-7ce1aedbf0c4" />

### Company nvim config

```bash
sudo feature install neovim
mv ~/.config/nvim{,.bak}
git clone git@github.com:seemethere/nvim-config ~/.config/nvim/
```

### Key LazyVim Shortcuts

| Shortcut | Action |
|----------|--------|
| `<Space>` | Leader key (opens command menu) |
| `<Space>ff` | Find files |
| `<Space>fg` | Live grep |
| `<Space>e` | File explorer |
| `<Space>gg` | LazyGit |

## oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
cp ./dotfiles/.zshrc ~/.zshrc
```

## Dotfiles

The `dotfiles/` directory contains config files to copy into your home directory:

```
dotfiles/
├── .zshrc                 # oh-my-zsh config
└── .claude/
    ├── CLAUDE.md          # Claude Code custom instructions (polished prompt, devserver env)
    └── settings.json      # Claude Code settings (model, plugins, permissions)
```

Copy all dotfiles:
```bash
cp dotfiles/.zshrc ~/.zshrc
cp dotfiles/.claude/CLAUDE.md ~/.claude/CLAUDE.md
cp dotfiles/.claude/settings.json ~/.claude/settings.json
```

`settings.json` configures:
- **Model**: `claude-opus-4-6` with fast mode enabled
- **Permissions**: auto-allows Bash, Edit, Write, NotebookEdit, WebFetch, WebSearch
- **Plugins**: 10x-engineer, ralph-wiggum, mia, data, datamate, meta_codesearch, meta_knowledge, code_provenance, llm-rules, meta, trajectory

## Claude Code

```bash
./claude-code-setup.sh
```

| Category | Components |
|----------|------------|
| Skills (11) | skill-creator, google-sheets, google-docs, google-api-proxy, diff-search, calendar, text-to-google-doc, eats, workplace, paste, mast-debugging |
| Agents (2) | code-reviewer, coder |
| Commands (3) | save, restore, learn |
| Plugins (2) | 10x-engineer, ralph-wiggum |
| MCP Servers (6) | metamate, workplace, google_docs, google_sheets, google_chat, graphql_query |

Meta org plugins (meta, knowledge_search, code_provenance, llm-rules, trajectory) auto-install on first `claude` launch.

### MSL Infra (optional)

```bash
./msl_infra_claude_setup.sh
cp dotfiles/.claude/* ~/.claude/
```

Installs: `feedstock` skill, `mia` plugin.

## iTerm2 Profiles

Import `Profiles.json` via iTerm2 > Settings > Profiles > Other Actions > Import JSON Profiles.

### Dev Session Script

`dev-session.sh` creates a tmux session with Neovim on the left and Claude Code on the right:

```bash
./dev-session.sh              # current directory
./dev-session.sh ~/fbsource   # specific project path
```
