# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias a="php artisan"
alias am="php artisan migrate:fresh --seed"
alias ao="php artisan optimize"
alias aoc="php artisan optimize:clear"
alias s='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sa="[ -f sail ] && sh sail || sh vendor/bin/sail artisan"
alias sam="[ -f sail ] && sh sail || sh vendor/bin/sail artisan migrate:fresh --seed"
alias sao="[ -f sail ] && sh sail || sh vendor/bin/sail artisan optimize"
alias saoc="[ -f sail ] && sh sail || sh vendor/bin/sail artisan optimize:clear"

alias ll="eza -a --icons --tree --level=1 --git --long"
alias ls="eza -a --icons"
alias cat='bat'

alias lg="lazygit"
alias lsq="lazysql"
alias ld="lazydocker"

alias yadm="cd $HOME && yadm"
alias ylg="yadm enter lazygit"

alias dss="sudo systemctl start docker"
alias dst="sudo systemctl stop docker"

alias dc="docker-compose"
alias d="docker"
alias dockclean="~/.scripts/docker-clean-operation.sh"

alias pi="pnpm install"
alias prd="pnpm run dev"

alias nv="nvim"
alias gone="~/.scripts/git-delete-untracked-branches.sh"
alias nah="git reset --hard && git clean -df"
alias zoraxy="sudo ~/zoraxy/src/zoraxy --port=:8001"
alias sshk="kitten ssh"
alias pokemon="pokemon-colorscripts --no-title -r 1,3,6"

# Pass aliases through sudo
alias sudo='sudo '
