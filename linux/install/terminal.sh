sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git

for installer in ~/.local/share/devstation/linux/install/terminal/*.sh; do source $installer; done

