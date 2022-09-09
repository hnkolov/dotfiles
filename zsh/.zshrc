export ZSH="/Users/nnikolov/.oh-my-zsh"
ZSH_THEME=""

plugins=(git gh)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug 'wfxr/forgit'
zplug load


export GOPATH="$HOME/go"

alias gcloudlogin="gcloud compute os-login ssh-keys add --key-file ~/.ssh/id_ed25519.pub && gcloud compute os-login ssh-keys list"
chmod 600 /Users/nnikolov/.ssh/google_compute_engine


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nnikolov/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nnikolov/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nnikolov/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nnikolov/google-cloud-sdk/completion.zsh.inc'; fi

export KITTY_CONFIG_DIRECTORY="~/.config/kitty/kitty.conf"
export EDITOR=nvim

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

if [ -f '~/.secrets.zshrc' ]; then
    source "secrets.zshrc";
fi
source "zsh.aliases"
