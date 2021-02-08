# Baseline Setup

This is the baseline setup I do in all my machines. Registered here so anyone could use it as well.

# MacOS

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

## Shell

In MacOS I'd install oh-my-zsh and change some stuff around.
To install oh-my-zsh here's the command:
```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
First I'd clone this repo on my `~/Source` folder, then link the `.zshrc` file to `~/.zshrc`:

```shell
ln -s ~/Source/baseline-setup/MacOS/.zshrc ~/.zshrc
```

Then clone all the necessary plugins:

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/djui/alias-tips.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/alias-tips
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autoupdate
git clone https://github.com/gcarrarom/oh-my-guish.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/oh-my-guish
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/Aloxaf/fzf-tab ~ZSH_CUSTOM/plugins/fzf-tab
```

To ensure that FZF is used for the ＾+R key binding, you just need to run this brew command:
```shell
$(brew --prefix)/opt/fzf/install
```

Also, to make sure the fonts are going to look good in the terminal, it's necessary to download a new font. Right now I'm using this one:
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip

If you don't like this font, the nerdfonts website has really great fonts!
https://www.nerdfonts.com/font-downloads

Also, to create the option key combinations, this can be set as iterm settings:
| Shortcut | config | behaviour | 
| :------: | :----: | :-------: |
| ⌥+← | escape sequence + b | skip one word backwards | 
| ⌥+→ | escape sequence + f | skipe one word forwards | 
| ⌘+delete | hex code + 0x15 | delete the line |
| ⌥+delete | hex code + 0x17 | delete one word | 
