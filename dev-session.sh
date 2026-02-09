#!/bin/bash
SESSION="dev"
PROJECT_PATH="${1:-.}"
PROJECT_PATH="$(cd "$PROJECT_PATH" 2>/dev/null && pwd)" || { echo "Invalid path: $1"; exit 1; }

# If session already exists, reattach to it
if tmux has-session -t $SESSION 2>/dev/null; then
  tmux -CC attach -t $SESSION
  exit 0
fi

# Otherwise, create a new session
tmux new-session -d -s $SESSION -x "$(tput cols)" -y "$(tput lines)" -c "$PROJECT_PATH"

# Left pane: Neovim
tmux send-keys -t $SESSION "nvim ." Enter

# Right pane: Claude Code
tmux split-window -h -t $SESSION -c "$PROJECT_PATH"
tmux send-keys -t $SESSION "claude" Enter

# Focus left pane (Neovim)
tmux select-pane -t $SESSION:0.0

tmux -CC attach -t $SESSION
