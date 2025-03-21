# Configure the bash shell using Omakub defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/devstation/linux/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/devstation/linux/configs/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp ~/.local/share/devstation/linux/configs/inputrc ~/.inputrc
