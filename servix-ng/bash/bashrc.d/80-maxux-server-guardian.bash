# /etc/bash/bashrc.d/80-maxux-server-guardian.bash
#
# With great power comes great responsibility that you should
# not type on the wrong terminal. This will prevent power-off
# or reboot - the classic way. If you really want to perform
# theses operations, execute the absolute path command.

_prevent_power_action() {
    echo "$1: why, why would you do that..."
}

for _ in reboot halt poweroff shutdown; do
    eval "$_() { _prevent_power_action $_; }"
done
