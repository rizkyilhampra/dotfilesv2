# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias nvimbak="~/.scripts/nvim-bak.sh"

#LARARAVEL ALIASSES
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
alias yadm="cd $HOME && yadm"
alias ylg="yadm enter lazygit"

function dcp() {
  # Mengecek apakah sudah ada autentikasi sudo sebelumnya dalam sesi yang sama
  if sudo -n true 2>/dev/null; then
    sudo ~/.scripts/discord-relay.sh &
  else
    echo "Password sudo diperlukan untuk menjalankan script ini."
    sudo -v  # Meminta password sudo
    sudo ~/.scripts/discord-relay.sh &
  fi
}

alias dss="sudo systemctl start docker"
alias dst="sudo systemctl stop docker"
alias dsr="sudo systemctl restart docker"

alias dc="docker-compose"
