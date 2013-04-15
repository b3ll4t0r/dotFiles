# base-files version 4.0-6
# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/tools/python32/Scripts" ] ; then
  PATH="${HOME}/tools/python32/Scripts:${PATH}"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

TOOLS_HOME=/Users/scatoe/Development/tools
PROJECTS_HOME=/Users/scatoe/Development/projects
PPDE_HOME=$TOOLS_HOME/SpartaDevEnv
JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
#JAVA_HOME=$PPDE_HOME/java6-ibm-sr4ifx3-2009-06-22-windows
MVN_HOME=$PPDE_HOME/maven-2.2.1
MAVEN_REPO=/Users/scatoe/.m2/maven.repo
M2_HOME=$PPDE_HOME/maven-2.2.1
ECLIPSE_HOME=$PPDE_HOME/eclipse
MAVEN_OPTS=-Xmx1024m
TOMCAT_HOME=$PPDE_HOME/apache-tomcat-5.5.27
#TOMCAT_HOME=$TOOLS_HOME/apache/tomcat-5.5.33

export TOOLS_HOME
export PROJECTS_HOME
export JAVA_HOME
export MVN_HOME
export MAVEN_REPO
export M2_HOME
export ECLIPSE_HOME
export MAVEN_OPTS
export TOMCAT_HOME

PATH=$JAVA_HOME/bin:$MVN_HOME/bin:$TOMCAT_HOME/bin:$PATH

alias mci='mvn clean install'
alias mcint='mvn clean install -DskipTests=true'
alias mcp='mvn clean package'
alias mi='mvn install'
alias mp='mvn package'
alias test='mvn test'
alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'
alias resetssh='rm $HOME/.ssh/known_hosts'
alias ex='open .'

# Pop open the window that we will use to start operations
# with elevated privledges
#cygstart -a runas mintty
export PS1="\[\]\h\[\](\w)🍔 \[\]"
