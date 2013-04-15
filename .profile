#enable global coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#change the prompt coloring
export PS1="\[\033[1;36m\]\h\[\033[33m\](\w) \$\[\033[0m\] "

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi


export TOOLS=$HOME/Development/tools
export PROJECTS=$HOME/Development/projects

MVN_REPO=$HOME/.m2/maven.repo
export RIO_HOME=$TOOLS/rio-4.2
export BLITZ_HOME=$TOOLS/blitz
export JINI_HOME=$TOOLS/jini2_1
export RIVER_HOME=$TOOLS/apache-river-2.2.0

export SECURITY_POLICY="-Djava.security.policy=$HOME/Development/config/security.policy -Djava.rmi.server.RMIClassLoaderSpi=net.jini.pref.PreferredClassProvider"

export PATH=$PATH:$RIVER_HOME/bin:$RIO_HOME/bin


# Aliases #
alias mci='mvn clean install'
alias mcint="mvn clean install -Dmaven.skip.test -skipTests=true"
alias mcp='mvn clean package'
alias mi='mvn install'
alias mp='mvn package'
alias test='mvn clean test'
alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'
alias resetssh='rm $HOME/.ssh/known_hosts'
alias ex='open .'
alias vi='vim'

alias ll="ls -asl"
alias grep="grep --color"
alias less="less -r"
