sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git

for installer in terminal/*.sh; do source $installer; done