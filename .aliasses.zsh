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

function dockcomposer() {
  local php_version="$1"

  if [[ -z "$php_version" ]]; then
    php_version="83"  # Set a default PHP version if not provided
  fi

  valid_versions=(80 81 82 83)
  if [[ ! " ${valid_versions[@]} " =~ " ${php_version} " ]]; then
    echo "Invalid PHP version: $php_version. Valid versions are: ${valid_versions[*]}"
    return 1  # Exit with an error code
  fi

  docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    "laravelsail/php${php_version}-composer:latest" \
    composer install --ignore-platform-reqs
}

alias dc="docker-compose"
