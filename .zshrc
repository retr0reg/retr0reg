[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/plugins.zsh ]] && source ~/.zsh/plugins.zsh
[[ -f ~/.zsh/setups.zsh ]] && source ~/.zsh/setups.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

plugins=(git
	fast-syntax-highlighting
	proxychains-sudo
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

set -o noclobber
eval "$(starship init zsh)"
