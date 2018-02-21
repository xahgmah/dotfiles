if [ -f "$brew" ]
then
    echo "Homebrew is installed, nothing to do here"
else
    echo "Homebrew is not installed, installing now"
    echo "This may take a while"
    echo "Homebrew requires osx command lines tools, please download xcode first"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

packages=(
    "git"
    "node"
    "tmux"
    "tmuxinator"
    "reattach-to-user-namespace"
    "bash-completion"
)

for i in "${packages[@]}"
do
    brew install $i
    echo "---------------------------------------------------------"
done

echo "installing RCM, for dotfiles management"
brew tap thoughtbot/formulae
brew install rcm
echo "---------------------------------------------------------"

localGit="/usr/local/bin/git"
if [ -f "$localGit" ]
then
    echo "git is all good"
else
    echo "git is not installed"
fi

echo "---------------------------------------------------------"

echo "Install tmuxinator"
gem install tmuxinator

echo "---------------------------------------------------------"

echo "Cloning dotfiles into .dotfiles"
git clone https://github.com/xahgmah/dotfiles.git ~/.dotfiles

echo "---------------------------------------------------------"

echo "Run Bootstrap script"
sh bootstrap.sh
