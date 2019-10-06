# .bash_profile

PATH=~/.bin:$PATH
export ALSA_CARD=PCH
export LADSPA_PATH=/usr/lib/ladspa
export BASH_COMPLETION_USER_DIR=$HOME/.config/bash-completion

#if [ "$(tty)" = "/dev/tty1" ]; then
#	LC_ALL=C mega-cmd-server &
#fi

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# graphical session on tty1
#if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
#	GTK_IM_MODULE=uim ; export GTK_IM_MODULE
#	QT_IM_MODULE=uim ; export QT_IM_MODULE
#	SVDIR=$HOME/service; export SVDIR
#	exec runsvdir $SVDIR
#fi
