#!/usr/bin/env bash

set -eo pipefail

f_path=$(find ~/Svelte -type d -name 'Settlement_App')
b_path=$(find ~/Rust -type d -name 'Settlement')

tmux new-session -d -s backend -c "$b_path"
tmux new-session -d -s frontend -c "$f_path"
tmux new-window -t "backend:2"
tmux send-keys -t backend:2 "cd $b_path && cargo run | jq" Enter
tmux new-window -t "frontend:2"
tmux send-keys -t frontend:2 "cd $f_path && npm run dev -- --open" Enter
