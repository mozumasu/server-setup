# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi

unset rc

# --------------
# user settings
# --------------

# base
alias bashrc='vim ~/.bashrc'
alias v='vim'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias relogin='exec $SHELL -l'
alias myip='curl ifconfig.me'
alias pa='ps -aux'

# configure
alias bashrc='vim ~/.bashrc'

# frp
alias frpsstart="frps -c /etc/frp/frps.toml"
alias sfrpsstart="sudo frps -c /etc/frp/frps.toml"
alias pfrps='ps -aux | grep pfrp'
alias vfrps='vim /etc/frp/frps.toml'

# --------------
# history
# --------------

export HISTTIMEFORMAT='%F %T '
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTIGNORE='ls:cd:pwd:exit:clear'
export HISTCONTROL='ignorespace'
