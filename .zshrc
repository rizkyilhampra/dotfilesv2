export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    gitfast
    zsh-autosuggestions 
    web-search 
    zsh-syntax-highlighting
    you-should-use
    zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

zstyle ':completion:*' completer _expand_alias _complete _ignored

alias artisan='php artisan'
alias a='artisan '
alias am='artisan  migrate:fresh --seed'
alias aoc='artisan optimize:clear'
alias amav="artisan make:view"
alias amam="artisan make:model"
alias amac="artisan make:controller"

alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'
alias s='sail'
alias sa='sail artisan'
alias sam='sail artisan migrate:fresh --seed'
alias saoc='sail artisan optimize:clear'

alias serve='artisan serve'
alias up='sail up -d'
alias down='sail down'
alias tinker='artisan tinker'
alias stan="vendor/bin/phpstan"


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

alias p="pnpm"
alias pi="pnpm install"
alias prd="pnpm run dev"
alias prb="pnpm run build"

alias nv="nvim"
alias gone="~/.scripts/git-delete-untracked-branches.sh"
alias nah="git reset --hard && git clean -df"
alias sshk="kitten ssh"
alias pokemon="pokemon-colorscripts --no-title -r 1,3,6"

alias sudo='sudo ' # Pass aliases through sudo

alias sshconfig="cat ~/.ssh/config"
alias nvimbak="~/.scripts/nvimbak.sh"
alias normalnv="NVIM_APPNAME=normalnvim nvim"
alias rnv="NVIM_APPNAME=rnvim nvim"

# User configuration
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh --cmd j)"
eval "$(starship init zsh)"

# bun completions
[ -s "/home/aquila/.bun/_bun" ] && source "/home/aquila/.bun/_bun"

pfetch
