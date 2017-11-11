set -g default-terminal "xterm-256color"

# Reload tmux config
bind r source-file ~/.tmux.conf

# Rename terminals
set -g set-titles on
set -g set-titles-string '#(whoami)::#h::#(echo $CURRENT_PLATFORM)'

set -g status-bg black
set -g status-fg white
set -g status-interval 5
set -g status-left-length 90
set -g status-right-length 90

set -g status-justify left

# Change CTRL-b to CTRL-a (CTRL-b is search backwards in vim)
unbind C-b
set -g prefix C-a
bind C-a send-prefix

unbind-key j
bind-key j select-pane -D

unbind-key k
bind-key k select-pane -U

unbind-key h
bind-key h select-pane -L

unbind-key l
bind-key l select-pane -R

# Enable mouse stuff.
source-file ~/.tmux.conf.d/mouse-new

# Open split windows at the CWD
bind '"' split-window -c "#{pane_current_path}"
bind '%' split-window -h -c "#{pane_current_path}"
bind c new-window -c "#{pane_current_path}"

# Key mapping stuff.
set -g mode-keys vi
set -g status-keys vi
set -s set-clipboard off
bind -T copy-mode-vi v send -X begin-selection
bind -T copy-mode-vi y send -X copy-pipe-and-cancel 'xsel -i -b'

# Resizing windows.
unbind-key u
bind-key u resize-pane -L 5

unbind-key i
bind-key i resize-pane -D 5

unbind-key o
bind-key o  resize-pane -U 5

unbind-key p
bind-key p resize-pane -R 5
bind _ resize-pane -Z

