source "$HOME/.zshenv"
source "$ZDOTDIR/insulter"
source "$ZDOTDIR/timer"
#source "$ZDOTDIR/grc"
source "$ZDOTDIR/aliases"
source /usr/share/grc/grc.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

HISTFILE="$XDG_CACHE_HOME/history"
HISTSIZE=4096
SAVEHIST=4096

bindkey -e
stty stop undef

setopt PROMPT_SUBST
ZLE_RPROMPT_INDENT=0
PROMPT="%m %~ %B%F{2}$ %f%b"
RPROMPT='$(zsh_cmdtime)%(?..%B%F{1} %?%b)'
__zsh_title="$TERM"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

function precmd () {
  print -Pn -- '\e]2;$__zsh_title %~\a'
}

function preexec () {
  zsh_cmdtime_start=$(zsh_cmdtime_time)
  print -Pn -- '\e]2;$__zsh_title $ ' && print -n -- "${(q)1}\a"
}

if [[ "$((RANDOM % 16))" = 7 ]];
then
  cat ~/.config/niko.txt
fi
