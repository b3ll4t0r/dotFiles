#Set up coloring
export PS1="\[\033[36m\]Ninja\[\033[m\]@\[\033[32m\]:\[\033[33;1m\]\w\[\033[m\]💀  "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
alias ls='ls -GFh'
alias ll='ls -aslGFh'

# set aliases
alias ..="cd .."
alias ex='open .'

alias mci='mvn clean install'
alias mcint='mvn clean install -DskipTests=true'
alias mcp='mvn clean package'
alias mi='mvn install'
alias mp='mvn package'
alias test='mvn test'

alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'

#Set up the Path
export PATH=/Users/scatoe/Development/tools/maven/bin:/Users/scatoe/bin:$PATH
