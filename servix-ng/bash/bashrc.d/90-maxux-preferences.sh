# /etc/bash/bashrc.d/90-maxux-preferences.sh
#
# Some general purposes preferences and details

# Increase verbosity
for _ in cp mv nc; do
    alias "$_=$_ -v"
done

# Reduce verbosity sometime...
alias gdb="gdb -q"

# Add some confirmation by default
alias rm="rm -vi"

# Prevent git-ps1 to analyse the current directory
# (really useful on slow remote directory)
alias nogit='__git_ps1() { true; }'

# Force colors for ip (the rest is already wrapped)
alias ip="ip -c"

# Make feh integrate better with dwm
alias feh="feh --scale-down"

# Prevent 'ls' to quote words
export QUOTING_STYLE="literal"

# Prevent history to save space-prefixed commands
# and duplicate in a row commands (and cleanup
# previous duplicates on save)
export HISTCONTROL="ignoreboth:erasedups"

# Keep a long history
export HISTSIZE=10000

# Always ignore power control commands
export HISTIGNORE="shutdown:reboot:halt:poweroff"

stty ixoff -ixon
