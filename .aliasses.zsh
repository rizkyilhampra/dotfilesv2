# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias a="php artisan"
alias sa="./vendor/bin/sail artisan"
alias s='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias am="php artisan migrate:fresh --seed"
alias sam="./vendor/bin/sail artisan migrate:fresh --seed"
alias alm="php artisan livewire:make"
alias alf="php artisan livewire:form"

alias ll="eza -a --icons --tree --level=1 --git --long"
alias ls="eza -a --icons"
alias cat='bat'

alias lg="lazygit"
alias ld="lazydocker"
alias yadm="cd $HOME && yadm"
alias ylg="yadm enter lazygit"

alias dss="sudo systemctl start docker"
alias dst="sudo systemctl stop docker"

alias dc="docker-compose"

alias pi="pnpm install"
alias prd="pnpm run dev"

alias v="nvim"
alias gone="~/.scripts/git-delete-untracked-branches.sh"
alias zoraxy="sudo ~/zoraxy/src/zoraxy --port=:8001"
alias sshk="kitten ssh"
alias pokemon="pokemon-colorscripts --no-title -r 1,3,6"
