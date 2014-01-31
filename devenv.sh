#! /bin/bash
cd src
tmux new-session -d -s Haskell
tmux rename-window 'Main'
tmux select-window -t Haskell:0
tmux send-keys 'vim .' 'C-m'
tmux split-window -v
tmux resize-pane -D 8

# Irssi Window
tmux new-window -n "Chat"
tmux send-keys 'irssi -c freenode -n $(cat ~/keys/freenode | cut -d : -f 1) -w $(cat ~/keys/freenode | cut -d : -f 2)' 'C-m'
tmux send-keys '/CHANNEL ADD -auto #haskell freenode' 'C-m'

tmux select-window -t 'Main'
tmux -2 attach-session -t Haskell
