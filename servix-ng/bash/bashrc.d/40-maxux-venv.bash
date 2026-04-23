# /etc/bash/bashrc.d/40-maxux-venv.bash
#
# Source user main virtualenv settings if available

venv_setter="${HOME}/.runtime/bin/activate"

if [[ -f ${venv_setter} ]]; then
    source ${venv_setter}
fi

unset venv_setter
