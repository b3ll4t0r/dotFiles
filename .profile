# -- Terminal --

## Prompt
source ~/bin/git-prompt.sh
update_prompt() {
    local git_branch=""
    if [[ -d .git || "$(git rev-parse --is-inside-work-tree 2>/dev/null)" == "true" ]]; then
        git_branch="$(__git_ps1)"
    fi
    export PS1="\[\033[36m\]Ninja\[\033[m\]@\[\033[32m\]:\[\033[33;1m\]\w\[\033[m\] \W${git_branch} 💀 "
}
PROMPT_COMMAND=update_prompt
# old - source ~/bin/git-prompt.sh
# old - export PS1="\[\033[36m\]Ninja\[\033[m\]@\[\033[32m\]:\[\033[33;1m\]\w\[\033[m\] \W$(__git_ps1) 💀 "

## Coloring
export LOG_COLOR=true
export CLICOLOR=1
# https://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/ <-- Colors
#export LSCOLORS=exfxcxdxbxegedabagacad
export LSCOLORS=GxFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'

## Shell
alias ls='ls -GFh'
alias ll='ls -aslGFh'
alias ..="cd .."
alias ex='open .'
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort

### Interactive operation
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

### Default to human readable figures
alias df='df -h'
alias du='du -h'

### Searching
alias grp="grep -r --include "
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

## Misc :)
alias feds-are-here='diskutil list | grep /dev | sort -r | \
                     xargs diskutil secureErase 1'
alias ossl="/opt/homebrew/Cellar/openssl@3/3.4.1/bin/openssl"

# -- Development --

## Project Home
export PROJECT_HOME=/Users/shawncatoe/Development/projects
export TOOL_HOME=/Users/shawncatoe/Development/tools
export DOC_HOME=/Users/shawncatoe/Development/docs

### Git
alias glog='git log --pretty-format:"%h - %an, %ar : %s'
alias gloga='git log --pretty-format:"%h - %an, %ar : %s -- author=$1'
alias pull='git pull'
alias push='git push'
alias commit='git commit -m'
alias add='git add'
alias status='git status'
alias co='git co'
alias rest='git restore'
alias merge='git merge main'
alias stash='git stash save happy'
alias pop='git stash pop'
alias ammend="git commit --amend"

### Go
export GOPATH=/Users/shawncatoe/go/bin
export GOBIN=/Users/shawncatoe/go/bin
export AVTAL_PAT="DIS_B_SUM_PAT"

#### Make
alias mk="make kill"
alias mkr="make kill run"
alias mb="make build"
alias mg="make generate"
alias mt="make test-all"
alias ms="make swag"

### AWS
export AWS_ACCESS_KEY_ID="AAAAAA"
export AWS_SECRET_ACCESS_KEY="BBBB"
export AWS_REGION="regionB""
export DEFAULT_REGION="regionX"
#### Pulumi - IaC
export PULUMI_CONFIG_PASSPHRASE_FILE=~/.pulumi/aws.txt
export PULUMI_BACKEND_URL="file://./state"
alias p="pulumi"

### NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# -- Path - brew, go, ~/bin, tools --
export PATH=$PATH:/opt/homebrew/bin:$GOPATH:/Users/shawncatoe/bin:$TOOL_HOME

# -- Functions --
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

boop () {
  local last="$?"
  if [[ "$last" == '0' ]]; then
    sfx good
  else
    sfx bad
  fi
  $(exit "$last")
}

