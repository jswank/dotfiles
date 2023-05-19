HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
PROMPT="%B%m:%~> %b"

export LANG=en_US.UTF-8
export EDITOR=nvim
export VISUAL=${EDITOR}
export PAGER=less
export LESS=RX  # R for ANSI color sequences, X to not clear screen on exit

export FZF_DEFAULT_OPTS="--multi --height=40% --layout=reverse"

export GOPATH=/home/jswank/go

# doesn't work on arch for tmux
path+=('/home/jswank/bin')
path+=($GOPATH/bin)
export PATH

export TMPDIR=/var/tmp
