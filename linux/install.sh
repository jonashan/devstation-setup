set -e # Exit if a command exits with a non-zero status

RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

if $RUNNING_GNOME; then
	# Ensure computer doesn't go to sleep or lock while installing
	gsettings set org.gnome.desktop.screensaver lock-enabled false
	gsettings set org.gnome.desktop.session idle-delay 0

  echo "Installing terminal and desktop tools"
else
  echo "Installing terminal tools only"
fi

if $RUNNING_GNOME; then
	# Revert to normal idle and lock settings
	gsettings set org.gnome.desktop.screensaver lock-enabled true
	gsettings set org.gnome.desktop.session idle-delay 300
fi