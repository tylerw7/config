#!/usr/bin/fish
# Fish configuration

set_abbr
set_aliases
set_exports

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

fish_vi_key_bindings

