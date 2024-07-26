
# End of lines added by compinstall
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

#zsh aliases
alias zshrc="code ~/.zshrc"
alias szshrc="source ~/.zshrc"
alias dev="cd ~/dev"
alias downs="cd ~/Downloads"
alias devw="cd /var/www"
alias dotfiles="cd ~/dotfiles"
alias deld="rm -rf"
alias delf="rm -f"

#virtualhost
alias vh="sudo virtualhost"
alias vhc="sudo virtualhost create"
alias vhd="sudo virtualhost delete"

#apt
alias apti="sudo apt install"
alias aptu="sudo apt update"
alias aptug="sudo apt upgrade"
alias aptr="sudo apt remove"
alias aptp="sudo apt purge"
alias apta="sudo apt autoremove"
alias aptc="sudo apt clean"
alias aptac="sudo apt autoclean"
alias aptl="apt list --upgradable"
alias aptli="apt list --installed"
alias aptlu="apt list --upgradable"
alias aptlr="apt list --removable"


#tree aliases
alias tree="tree -C"
alias tr="tree -L 1"
alias trr="tree -L 2"
alias tra="tree -L 1 -a"
alias trra="tree -L 2 -a"
alias trd="tree -L 1 -d"
alias trrd="tree -L 2 -d"
alias trda="tree -L 1 -a -d"
alias trrda="tree -L 2 -a -d"
alias trf="tree -L 1 -f"
alias trrf="tree -L 2 -f"
alias trfa="tree -L 1 -a -f"
alias trrfa="tree -L 2 -a -f"
alias trfd="tree -L 1 -d -f"
alias trrfd="tree -L 2 -d -f"
alias trfda="tree -L 1 -a -d -f"
alias trrfda="tree -L 2 -a -d -f"


#git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gpl="git pull"
alias gpp="git pull && git push"
alias gl="git log"
alias gll="git log --oneline"
alias gd="git diff"
alias gdc="git diff --cached"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gr="git remote"
alias gra="git remote add"
alias grv="git remote -v"
alias grm="git remote rm"
alias grs="git remote show"
alias gru="git remote update"
alias grt="git remote prune"

#pnpm aliases
alias pm="pnpm"
alias pmi="pnpm install"
alias pmu="pnpm update"
alias pmr="pnpm run"
alias pma="pnpm add"
alias pmd="pnpm remove"
alias pmx="pnpm dlx"
alias pmg="pnpm global"
alias pmc="pnpm create"
alias pml="pnpm list"
alias pmt="pnpm test"
alias pmv="pnpm version"
alias pmp="pnpm publish"
alias pmc="pnpm config"
alias pmn="pnpm init"

#composer
alias cmpsr="composer"
alias cmpsri="composer install"
alias cmpsru="composer update"
alias cmpsrd="composer require"
alias cmpsrr="composer remove"
alias cmpsra="composer archive"
alias cmpsrs="composer show"

#npm
alias npmi="npm install"
alias npmis="npm install --save"
alias npmisd="npm install --save-dev"
alias npmig="npm install -g"
alias npmisg="npm install --save -g"

#yarn
alias y="yarn"

#docker
alias d="docker"

#docker-compose
alias dc="docker-compose"

#kubernetes
alias k="kubectl"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias chngphp="sudo update-alternatives --config php"

alias artisan="php artisan"

export PATH="$PATH:/opt/nvim-linux64/bin"