#!/bin/sh

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# third party program aliases
alias lynxkite='lynxkite interactive'
alias minidlna-on='minidlnad -f $HOME/.config/minidlna/minidlna.conf -P $HOME/.config/minidlna/minidlna.pid -d'

# anaconda
alias anaconda-off='conda deactivate'
alias anaconda-on='source /opt/anaconda/bin/activate root'

# exa
alias xll='exa -alg --icons --color=always --group-directories-first --octal-permissions'
alias xls='exa -a --icons --color=always --group-directories-first'

# Dev
alias lamp-start='sudo systemctl start mariadb && sudo systemctl start httpd'
alias venv-on='source venv/bin/activate'

# misc
alias grep='grep --color=auto'
alias free='free -m'
alias egrep='egrep --color=auto'

# custom
alias vimtutor='nvim +Tutor'
alias notify='paplay $HOME/yitchware/sounds/notifications/google.ogg'
