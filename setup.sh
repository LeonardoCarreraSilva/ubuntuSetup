echo "Fazendo pasta"
mkdir ~/Projects
echo "Pasta Projects feita"
cd ~/Projects
echo "Clonando ASDF"
sudo apt-get update -y && apt-get -y  install curl git dirmngr gpg gawk && git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.15.0 && . $HOME/.asdf/asdf.sh
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
source ~/.bashrc
sudo apt update
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin.git
asdf plugin-add maven
asdf install java latest:adoptopenjdk-11