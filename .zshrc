#
# Keymap & Key Bindings
#
bindkey -e
bindkey '^U' backward-kill-line
setopt ignore_eof

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
autoload vcs_info
precmd() {
  vcs_info
}
zstyle ':vcs_info:*' formats '[%s:%b]'
zstyle ':vcs_info:*' actionformats '[%s:%b|%a]'
setopt prompt_subst
PROMPT='%(?.%F{green}.%F{red})$ %f'
RPROMPT='%(?.%F{green}.%F{red})[%m:%1~]${vcs_info_msg_0_}%f'

#
# Completion
#
autoload -U compinit; compinit

#
# Line Editor
#
autoload -U select-word-style; select-word-style default
zstyle ':zle:*' word-style unspecified
zstyle ':zle:*' word-chars ' /'

#
# Local Settings
#
if [ -r ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi
