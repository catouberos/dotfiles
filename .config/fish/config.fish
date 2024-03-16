if status is-interactive
    # Commands to run in interactive sessions can go here
end

# config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# vi bindings
set -gx fish_key_bindings fish_vi_key_bindings
# Emulates vim's cursor shape behavior
set -gx fish_vi_force_cursor 1
# Set the normal and visual mode cursors to a block
set -gx fish_cursor_default block
# Set the insert mode cursor to a line
set -gx fish_cursor_insert line
# Set the replace mode cursors to an underscore
set -gx fish_cursor_replace_one underscore
set -gx fish_cursor_replace underscore
# Set the external cursor to a line. The external cursor appears when a command is started.
# The cursor shape takes the value of fish_cursor_default when fish_cursor_external is not specified.
set -gx fish_cursor_external line
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set -gx fish_cursor_visual block

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# starship
starship init fish | source
