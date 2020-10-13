export ZSH=$HOME/.oh-my-zsh

export ZSH_THEME="spaceship"


plugins=(
        alias-tips
        autoupdate
        oh-my-guish
        provides-ops
        zsh-autosuggestions
        kubectl
        git
        kubectl-complete
        zsh-syntax-highlighting
        fzf-tab
    )
    
SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh
autoload bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az 