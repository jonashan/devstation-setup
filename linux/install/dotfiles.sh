set -e

echo "Cloning dotfiles repo..."
rm -rf ~/dotfiles
git clone https://github.com/jonashan/dotfiles.git ~/dotfiles >/dev/null

echo "Installing dotfiles"
# source ~/dotfiles/ubuntu-install.sh
