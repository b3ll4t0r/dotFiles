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

# Maven
alias mci='mvn clean install'
alias mcint='mvn clean install -DskipTests=true'
alias mcp='mvn clean package'
alias mi='mvn install'
alias mp='mvn package'
alias test='mvn test'

# Git
alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'

#Set up the Path
export PATH=/Users/scatoe/Development/tools/maven/bin:/Users/scatoe/bin:$PATH
