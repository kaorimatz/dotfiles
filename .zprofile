stty stop undef

type plenv > /dev/null 2>&1 && eval "$(plenv init -)"
type pyenv > /dev/null 2>&1 && eval "$(pyenv init -)"
type rbenv > /dev/null 2>&1 && eval "$(rbenv init -)"

if [ -r ~/.zprofile.local ]; then
  . ~/.zprofile.local
fi
