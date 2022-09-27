export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(git gh)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -f '/usr/share/fzf/key-bindings.zsh' ]; then
	source "/usr/share/fzf/key-bindings.zsh";
	source "/usr/share/fzf/completion.zsh";
fi
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
'
export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug 'wfxr/forgit'
zplug load

export GOPATH="$HOME/go"
export KITTY_CONFIG_DIRECTORY="~/.config/kitty/kitty.conf"
export EDITOR=nvim

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

if [ -f "$HOME/secrets.zshrc" ]; then
    source "$HOME/secrets.zshrc";
fi
if [ -f "$HOME/.gc.zshrc" ]; then
    source "$HOME/.gc.zshrc";
fi
source "$HOME/zsh.aliases"
