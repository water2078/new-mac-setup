# new-mac-setup

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install tmux
```

## usage
```
# local
tmux -CC attach

# devserver, can be setup with iterm2
ssh devgpu011.lco3.facebook.com -t "tmux -CC attach -t work || tmux -CC new -s work"
```

# company setup
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
