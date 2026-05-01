# /etc/bash/bashrc.d/41-maxux-tmux-title.bash
# Update tmux pane title with current running command

case ${TERM} in
	screen*|tmux*)
		# Update tmux pane title with the full running command line
        trap 'printf "\033]0;${BASH_COMMAND}\033\x5C"' DEBUG

		# Override Gentoo's set title to customize the prompt
		genfun_set_win_title() {
			local prompt='(\u) \w'
			printf '\033]0;%s\007' "${prompt@P}"
		}

        ;;
esac
