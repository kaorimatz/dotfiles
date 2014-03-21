#
# Keymap & Key Bindings
#
bindkey -e
bindkey '^U' backward-kill-line

#
# History
#
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=$HISTSIZE
setopt hist_ignore_dups
setopt hist_ignore_space
setopt share_history

#
# Prompt
#
PROMPT='%(?.%F{green}.%F{red})$ %f'
RPROMPT='%(?.%F{cyan}.%F{red})[%m:%1~]%f'

#
# Completion
#
autoload -U compinit; compinit

#
# Local Settings
#
if [ -r ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
