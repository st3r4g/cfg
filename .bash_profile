# .bash_profile

PATH=~/.bin:~/.local/bin:$PATH
export EDITOR=nvim

# Wayland stuff
if test -z "${XDG_RUNTIME_DIR}"; then
     export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
     if ! test -d "${XDG_RUNTIME_DIR}"; then
         mkdir "${XDG_RUNTIME_DIR}"
         chmod 0700 "${XDG_RUNTIME_DIR}"
     fi
fi

# autologin on tty1
if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
	# Menu Key is Compose Key
	export XKB_DEFAULT_OPTIONS=compose:menu
	# Start Japanese IM
	GTK_IM_MODULE=uim ; export GTK_IM_MODULE
	QT_IM_MODULE=uim ; export QT_IM_MODULE

#	exec sway
fi

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
