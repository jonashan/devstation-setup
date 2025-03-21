set -e

echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning repo..."
rm -rf ~/.local/share/devstation
git clone https://github.com/jonashan/devstation-setup.git ~/.local/share/devstation >/dev/null

echo "Installation starting..."
source ~/.local/share/devstation/install.sh
