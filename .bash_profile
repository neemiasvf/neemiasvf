# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Function to show current git branch on terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Enabling colors on terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[1;31m\]\$(parse_git_branch)\$(~/.rvm/bin/rvm-prompt g)\[\033[m\]\$"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Setting PATH for RVM and system’s directories
# export PATH=$HOME/.rvm/gems/ruby-2.3.1/bin:$HOME/.rvm/rubies/ruby-2.3.1/bin:$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export PATH=$HOME/.rvm/gems/ruby-2.3.3/bin:$HOME/.rvm/gems/ruby-2.3.3@global/bin:$HOME/.rvm/rubies/ruby-2.3.3/bin:$HOME/.rvm/bin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# Set $EDITOR
export EDITOR=atom

## Alias definitions
# GitHub
alias gcl='git clone'
alias gs='git status'
alias gl='git log'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gca='git checkout -a'
alias gcs='git checkout staging'
alias gcn='git checkout neemias'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gf='git fetch'
alias ga='git add'
alias ga.='git add .'
alias gcm='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias hsd='hack && ship && dwf'

# RVM
alias installrvm='\curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew --ignore-dotfiles --version latest'
alias ru='rvm use'
alias rud='rvm use default'
alias rug='rvm use @global'
alias ruc='rvm use @coursera'
alias ruwp='rvm use @web-programming'
alias ruwpp3='rvm use @web-programming-p3'
alias ruper='rvm use @per'
alias rur='rvm use @residuos'
alias ri='rvm install'
alias rl='rvm list'
alias rgl='rvm gemset list'
alias gel='gem list'
alias guc='gem update && gem cleanup'
alias rvmautolibs='rvm autolibs enable && rvm autolibs packages && rvm autolibs homebrew'
alias rvmupcl='rvm get stable && rvm cleanup all'

# Rails
alias rdrop='rake db:drop'
alias rdropp='rake parallel:drop'
alias rcreate='rake db:create'
alias rcreatep='rake parallel:create'
alias rsetup='rake db:setup'
alias rsetupp='rake parallel:setup'
alias rmigrate='rake db:migrate'
alias rmigratep='rake parallel:migrate'
alias rprepare='rake db:test:prepare'
alias rpreparep='rake parallel:prepare'
alias rseed='rake db:seed'
alias rreset='rake db:migrate:reset'
alias rresetp='rdropp && rcreatep && rmigratep && rpreparep'
alias reseed='rreset && rseed && rprepare'
alias reseedp='rmigratep && rseedp && rresetp'
alias rs='rails server'
alias rc='rails console'
alias test='rspec && cucumber'
alias testp='rake parallel:spec && rake parallel:features'

# Wine
alias idm='wine ~/.wine/drive_c/Program\ Files/Internet\ Download\ Manager/IDMan.exe'

# Other
alias nbp='nano .bash_profile'
alias buuc='brew update && brew upgrade && brew cleanup && brew cask cleanup'
alias loginimac='ssh -i ~/.ssh/me.neemiasvf.mbp Neemias@imac.neemiasvf.me'
alias loginaws='ssh -i ~/Documents/me.neemiasvf.aws.pem ubuntu@aws.neemiasvf.me'
alias res='cd ~/github/residuos'
alias web='cd ~/github/web-programming'
alias webp3='cd ~/github/web-programming-p3'
alias pooa='cd ~/github/pooa'
alias per='cd ~/github/per'
alias lsa='ls -a'
alias lsla='ls -la'
alias rubymine='cd $HOME/Applications/RubyMine-2016.1.1/bin && ./rubymine.sh'
alias updateubuntu='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt autoremove'
