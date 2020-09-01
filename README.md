# Baseline Setup

This is the baseline setup I do in all my machines. Registered here so anyone could use it as well.

# MacOS

## Shell
In MacOS I'd install oh-my-zsh and change some stuff around. 
First I'd clone this repo on my `~/Source` folder, then link the `.zshrc` file to `~/.zshrc`:
```shell
ln -s ~/Source/baseline-setup/MacOS/.zshrc ~/.zshrc
```
Then clone all the necessary plugins:
```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

## Software
The baseline software I'd install on MacOS usually comes from Brew, but there are some exceptions.
### Brew
Before installing any other software, I need to install homebrew:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
All my Brew software is synced to this repo in the MacOS folder, to install it all, it's just a matter of running these two commands:
```shell
brew install $(cat ~/Source/baseline-setup/MacOS/brewdump)
brew cask install $(cat ~/Source/baseline-setup/MacOS/brewcaskdump)
```