# /etc/bash/bashrc.d/20-maxux-production.bash
#
# Configure terminal and environment to apply special
# customization for users who runs production services.
#
# Slightly see a difference between test environment and
# production environment can prevent you typing a command
# which can ruins your week-end

if [[ $(id --name --groups) != *"production"* ]]; then
    # This is a regular user,
    # nothing special to do
    return
fi

# Keep a flag to easily set production mode globally
special_production_user=1

# Override PS1 to slightly change prompt color
PS1='\[\033[1;38;5;220m\]\u@\h\[\033[1;34m\] \w \$\[\033[00m\] '
