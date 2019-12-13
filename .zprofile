# enable the default zsh completions!
autoload -Uz compinit && compinit

# enable git completion scripts
zstyle ':completion:*:*:git:*' script /usr/local/share/zsh/site-functions/git-completion.bash
fpath=(~/.zsh $fpath)

# Set $EDITOR
export EDITOR=nano

# Set path for Homebrew executables
export PATH="/usr/local/sbin:$PATH"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## Alias definitions
# Git
alias gs='git status'
alias gl='git log'

# Discourse
alias updatediscourse='cd ~/git/discourse && gf upstream && gc master && git merge upstream/master && gc tests-passed && git merge upstream/tests-passed && gc dungeongg && git rebase tests-passed && gps --all -f'
alias updatedocker='cd ~/git/discourse_docker/image/base && gf upstream && gc master && gps && git merge upstream/master && gc dungeongg && git rebase master && gps -f && docker build --tag=dungeongg/discourse:release . && docker push dungeongg/discourse:release'

# RVM
alias installrvm='gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew --ignore-dotfiles --version latest'
alias ru='rvm use'
alias rud='rvm use default'
alias rug='rvm use @global'
alias ri='rvm install'
alias rl='rvm list'
alias rgl='rvm gemset list'
alias gel='gem list'
alias guc='gem update && gem cleanup'
alias rvmautolibs='rvm autolibs enable && rvm autolibs packages && rvm autolibs homebrew'
alias rvmupcl='rvm get stable && rvm cleanup all'

# Ruby
alias updaterubygems='rug && guc && gem install bundler && gem install rubygems-update && gem update --system'

# rTorrent
alias startrt='daemon --name=rtorrent rtorrent'
alias stoprt='daemon --name=rtorrent --stop'

# macOS
alias disablegatekeeper='sudo spctl --master-disable'
alias enablegatekeeper='sudo spctl --master-enable'

# Don't Starve Together
alias startft='screen -S dst -d -m ~/run_familia_together.sh'
alias openft='screen -r dst'

# Other
alias zp='nano .zprofile'
alias zrc='nano .zshrc'
alias buuc='brew update && brew upgrade && brew cleanup'
alias lsa='ls -a'
alias lsla='ls -la'
alias updateubuntu='sudo apt update && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y'
alias createdbuser='sudo -u postgres createuser -s'
alias gopsql='sudo -u postgres psql'  # \password
alias resetglr='sudo gitlab-runner stop && cd ~/gitlab-runner && sudo gitlab-runner install -u neemiasvf && sudo gitlab-runner start'
alias rlw='rm /Library/Caches/com.apple.desktop.admin.png'
alias tree='tree -L 3'
