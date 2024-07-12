
# AutoJMP
[[ -s /home/retr0/.autojump/etc/profile.d/autojump.sh ]] && source /home/retr0/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# JINA
if [[ ! -o interactive ]]; then
    return
fi
compctl -K _jina jina
_jina() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(jina commands)"
  else
    completions="$(jina completions ${words[2,-2]})"
  fi

  reply=(${(ps:
:)completions})
}
ulimit -n 4096
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# JINA

source $HOME/.agent-bridge.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
        [[ -s /home/retr0/.autojump/etc/profile.d/autojump.sh ]] && source /home/retr0/.autojump/etc/profile.d/autojump.sh

        autoload -U compinit && compinit -u