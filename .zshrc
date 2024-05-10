# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    gitfast
    zsh-autosuggestions 
    web-search 
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh


artisan() {
    if [ -f docker-compose.yml ]; then
        case "$1" in
            "serve")
                sh vendor/bin/sail up -d
                ;;
            "down")
                sh vendor/bin/sail down
                ;;
            *)
                sh vendor/bin/sail artisan "$@"
                ;;
        esac
    else
        php artisan "$@"
    fi
}
alias a='artisan'
alias am='artisan migrate:fresh --seed'
alias aoc='artisan optimize:clear'
alias serve='artisan serve'
alias down='artisan down'
alias tinker='artisan tinker'

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
alias sshk="kitten ssh"
alias pokemon="pokemon-colorscripts --no-title -r 1,3,6"

# Pass aliases through sudo
alias sudo='sudo '

alias sshconfig="cat ~/.ssh/config"
alias nvimbak="~/.scripts/nvimbak.sh"
alias normalnv="NVIM_APPNAME=normalnvim nvim"

# User configuration
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh --cmd j)"
eval "$(starship init zsh)"

pfetch
