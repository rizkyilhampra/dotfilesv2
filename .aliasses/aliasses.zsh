# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias nvimbak="~/.scripts/nvim-bak.sh"
function ar() {
    if [[ $1 == "sail" ]]; then
        command sail artisan "${@:2}"
    else
        command php artisan "$@"
    fi
}
alias migrate="ar migrate:fresh --seed"
alias lw="ar livewire:make"
alias lwf="ar livewire:form"

#update and upgrade
function uu() {
    if grep -q 'ID=arch' /etc/os-release; then
        yay
    else
        sudo apt update && sudo apt upgrade -y
    fi
}

alias ll="eza -a --icons --tree --level=1 --git --long"
alias ls="eza -a --icons"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
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
