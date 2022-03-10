source "$HOME/.zshenv"
source "$ZDOTDIR/aliases"
source "$ZDOTDIR/insulter"

HISTFILE="$XDG_CACHE_HOME/history"
HISTSIZE=4096
SAVEHIST=4096

# Emacs style keybinds
bindkey -e

# kill ^S
stty stop undef

# prompt
ZLE_RPROMPT_INDENT=0
PROMPT='%~ %B%F{2}$ %f%b'
RPROMPT='%(?..%B%F{1}%?%b)'

# completion
autoload -U compinit
zstyle ':completion:*' menu select

# show hidden files
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# title
function titlepre () {
	print -Pn -- '\e]2;%n at %m in %~\a'
}

function titleexec () {
	print -Pn -- '\e]2;%n at %m in %~ %# ' && print -n -- "${(q)1}\a"
}

autoload -Uz add-zsh-hook
if [[ "$TERM" == st* ]]; then
  add-zsh-hook -Uz precmd titlepre
  add-zsh-hook -Uz preexec titleexec
fi

if [[ "$((RANDOM % 16))" = 7 ]];
then
  cat ~/.config/niko.txt
else
  print -P "hi %B%F{4}%n%f%b, i'm %B%F{1}%m%b%f!!"
fi
