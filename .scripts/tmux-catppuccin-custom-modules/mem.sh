show_mem() {
  local index=$1
  local icon="$(get_tmux_option "@catppuccin_mem_icon" "󰒋")"
  local color="$(get_tmux_option "@catppuccin_mem_color" "$thm_orange")"
  local text="$(get_tmux_option "@catppuccin_mem_text" "$(free -h | awk '/^Mem:/ {print $3 "/" $2}')")"

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
