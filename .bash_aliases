# General
alias c="clear"
alias hc="history -c"
alias h="history"
alias a="alias"
alias r="source ~/.bash_profile"
alias e="exit"
alias ex="export"
alias exp="export -p"


# Directory Listing
alias ls="ls -G"
alias la="ls -AG"
alias ll="ls -ltr"
alias lla="ls -altr"

# Directory Navigation
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"

# Directory Creation
alias mkdir="mkdir -p"

# Destructive Commands
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# Path
alias path='echo -e ${PATH//:/\\n}'

# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gc="git clone"
alias gcm="git commit -m"
alias gba="git branch -a"
alias gpo="git push origin"
alias ga="git add"
alias gl="git log"


# Processes
alias p="ps aux | less"

# Text Editing
alias vi="vim"

# Meta
alias vv="vim ~/.vimrc"
alias vba="vim ~/.bash_aliases"

# Python
alias python="python3"
alias pip="pip3"

## Dependencies
alias pf="pip3 freeze"
alias pfr="pip3 freeze > requirements.txt"

## Venv
alias venv="python3 -m venv env"
alias svenv="source env/bin/activate"
alias d="deactivate"

#TODO: Should parameterize env and requirements
function venvinstall () {
    if [ ! -d env ]
    then
        python3 -m venv env
    fi
    source env/bin/activate
    if [ -f requirements.txt ]
    then
        pip3 install -r requirements.txt
    fi
}

# Fun
alias starwars="telnet towel.blinkenlights.nl"
alias fcow="fortune | cowsay"
alias parrot="curl parrot.live"
alias aq="asciiquarium"

function weather () {
    curl http://wttr.in/${1}
}

# For reference
# rig                                    # generate random fake identities
# rev <<< "go hang a salami im a lasagna hog" # palindrome
# figlet STRING                          # print ascii bubble text
# lolcat                                 # rainbow colors (gem install lolcat)
# curl http://wttr.in/ann_arbor          # ascii weather report

# Transmission
alias ts="sudo service transmission-daemon"
alias vts="sudo vim /var/lib/transmission-daemon/info/settings.json"
alias tra="transmission-remote -a"

# Server
alias urs="sudo systemctl restart uwsgi.service"

alias trs="sudo systemctl restart transmission-daemon.service"
alias prs="sudo systemctl restart plexmediaserver.service"

alias uss="sudo systemctl start uwsgi.service"

alias tss="sudo systemctl start transmission-daemon.service"
alias pss="sudo systemctl start plexmediaserver.service"

alias usss="sudo systemctl stop uwsgi.service"

alias tsss="sudo systemctl stop transmission-daemon.service"
alias psss="sudo systemctl stop plexmediaserver.service"

# Daemons
alias dr="sudo systemctl daemon-reload"

# Nordvpn
alias vpnl="nordvpn login"
alias vpnc="nordvpn connect"
alias vpns="nordvpn status"
alias vpnd="nordvpn disconnect"
