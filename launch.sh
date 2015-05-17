#!/bin/bash

tmux kill-session -t rtb
tmux new-session -d -s rtb './build/x86_64/bin/launcher --node localhost --script ./launch.sh --launch cliquesconfig/launch.json'
tmux rename-window 'launcher'
tmux new-window -d -t rtb:1 -n 'monitor' 'tail -F ~/rtbkit_logs/tmux/monitor.log'
tmux new-window -d -t rtb:2 -n 'ad-server' 'tail -F ~/rtbkit_logs/tmux/ad-server.log'
tmux new-window -d -t rtb:3 -n 'logger' 'tail -F ~/rtbkit_logs/tmux/logger.log'
tmux new-window -d -t rtb:4 -n 'agent-configuration' 'tail -F ~/rtbkit_logs/tmux/agent-configuration.log'
tmux new-window -d -t rtb:5 -n 'banker' 'tail -F ~/rtbkit_logs/tmux/logs/banker.log'
tmux new-window -d -t rtb:6 -n 'augmentor' 'tail -F ~/rtbkit_logs/tmux/augmentor.log'
tmux new-window -d -t rtb:7 -n 'router' 'tail -F ~/rtbkit_logs/tmux/router.log'
tmux new-window -d -t rtb:8 -n 'post-auction' 'tail -F ~/rtbkit_logs/tmux/post-auction.log'
if [[ "$*" != *--quiet* ]]
then
    tmux attach -t rtb
fi
