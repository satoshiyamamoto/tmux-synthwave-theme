#!/usr/bin/env bash

background='#2a2139'
inactiveBackground='#241b2f'
foreground='#d6deeb'
cursor='#7e57c2'
color5='#f92aad'
color8='#535353'

# status
tmux set-option -g status-justify "centre"
tmux set-option -g status "on"
tmux set-option -g status-attr "none"
tmux set-option -g status-bg "${background}"

# messages
tmux set-option -g message-fg "${foreground}"
tmux set-option -g message-bg "${background}"
tmux set-option -g message-command-fg "${foreground}"
tmux set-option -g message-command-bg "${background}"

# panes
tmux set-option -g pane-active-border-style "fg=${color5},bg=${background}"
tmux set-option -g pane-border-style "fg=${color8},bg=${inactiveBackground}"

# selection
tmux set-option -g mode-style "fg=${background},bg=${foreground}"

# active / inactive pane bg
tmux set-option -g window-style "bg=${inactiveBackground}"
tmux set-option -g window-active-style "bg=${background}"

# window status
tmux set-window-option -g window-status-fg "${foreground}"
tmux set-window-option -g window-status-attr "none"
tmux set-window-option -g window-status-activity-bg "${background}"
tmux set-window-option -g window-status-activity-attr "none"
tmux set-window-option -g window-status-activity-fg "${color3}"
tmux set-window-option -g window-status-separator ""
tmux set-window-option -g window-status-bg "${background}"
tmux set-window-option -g window-status-format "#[fg=${color8},bg=${background}] #W "
tmux set-window-option -g window-status-current-format "#[bg=${background}, fg=${color5}] #{?window_zoomed_flag,(,}#W#{?window_zoomed_flag,),} "

tmux set-option -g status-left-attr "none"
tmux set-option -g status-left-length "100"
tmux set-option -g status-right-attr "none"
tmux set-option -g status-right-length "100"
tmux set-option -g status-left "#[fg=${color8}] #S"

# vim: set ft=bash
