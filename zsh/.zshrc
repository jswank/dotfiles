alias ls='ls --color=auto'
alias mailx='/usr/local/bin/mailx'
alias grep='grep --color'
alias vim='nvim'

bindkey -v

if [ "${TERM}" = "xterm" ]; then
  TERM=xterm-256color
fi

case $TERM in
  xterm*|st-256color|rxvt-unicode-256color)
    print -Pn "\e]0;%m\a"
    ;;
esac

eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet id_ed25519)
if [ -n "$SSH_AUTH_SOCK" ]; then
        ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock
  export SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock
fi

# Highlight the current autocomplete option
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Better SSH/Rsync/SCP Autocomplete
#zstyle ':completion:*:(scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
#zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
#zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'
#
# Allow for autocomplete to be case insensitive
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
#  '+l:|?=** r:|?=**'

# command line completion for ssh
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
  h=($h ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:(ssh|scp|slogin|sftp):*' hosts $h
fi

zstyle :compinstall filename '/home/jswank/.zshrc'
autoload -Uz compinit
compinit

# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored
#zstyle :compinstall filename '/home/jswank/.zshrc'
#
#autoload -Uz compinit
#compinit
# End of lines added by compinstall
