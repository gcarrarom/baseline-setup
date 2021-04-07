export ZSH=$HOME/.oh-my-zsh

#export ZSH_THEME="spaceship"


plugins=(
        alias-tips
        autoupdate
        oh-my-guish
        provides-ops
        zsh-autosuggestions
        kubectl
        git
        zsh-syntax-highlighting
        fzf-tab
        fzf-marks
    )
    
#SPACESHIP_KUBECTL_SHOW=true
#SPACESHIP_KUBECTL_VERSION_SHOW=false
#SPACESHIP_KUBECONTEXT_SHOW=true
#SPACESHIP_CHAR_SYMBOL="⌁ "
#SPACESHIP_TIME_SHOW=true
export PATH="$PATH:$HOME/Source/tools/flutter/bin"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
eval $(thefuck --alias)
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
eval "$(gh completion -s zsh)"
source $ZSH/oh-my-zsh.sh
autoload bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az 
source /usr/local/etc/bash_completion.d/jira.sh 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"