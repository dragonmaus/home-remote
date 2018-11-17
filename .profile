set -a

EDITOR=vi
ENV=$HOME/.shrc
GPG_TTY=`tty`
HOSTNAME=${HOSTNAME:-`hostname`}
LANG=en_US.UTF-8
LC_COLLATE=C
LESS=iMR
LESSHISTFILE=/dev/null
MAKEOBJDIRPREFIX=$HOME/obj
MORE=iR
PAGER=more; MANPAGER=$PAGER' -s'
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH
TOP='-atu -s1'

set +a

pgrep -q ssh-agent || ssh-agent >"$HOME"/.ssh/agent.sh
test -r "$HOME"/.ssh/agent.sh && . "$HOME"/.ssh/agent.sh
