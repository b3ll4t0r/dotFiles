#Set up coloring
export PS1="\[\033[36m\]Ninja\[\033[m\]@\[\033[32m\]:\[\033[33;1m\]\w\[\033[m\]💀  "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
alias ls='ls -GFh'
alias ll='ls -aslGFh'

# General aliases
alias ..="cd .."
alias ex='open .'

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias feds-are-here='diskutil list | grep /dev | sort -r | \
                     xargs diskutil secureErase 1'


# Git
alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'
alias pull='git pull'
alias push='git push'
alias commit='git commit -m'
alias add='git add'
alias status='git status'


#Set up the project home
export PROJECT_HOME=/Users/scatoe/Development/projects

#Set up the Path
export PATH=/Users/scatoe/bin:$PATH

log () {
    if [ $# -eq 0 ]; then
        echo "Usage is one parameter when logging"
        return 1
    fi
    if [ "$1" == "-s" ]; then
        if [ $# -ne 2 ]; then
            echo "Usage is two parameters when setting the subject"
            return 2
        fi
        echo -e "\n\n$2 - $(date)" >> ~/Documents/Log.txt
        printf '%0.s-' $(seq 1 ${#2}) >> ~/Documents/Log.txt
        printf "\n" >> ~/Documents/Log.txt
    elif [ "$1" == "-o" ]; then
        open ~/Documents/Log.txt
    else
        printf "$1\n" >> ~/Documents/Log.txt
    fi
}

