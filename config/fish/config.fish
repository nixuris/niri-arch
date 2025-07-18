if status is-interactive
    ~/.config/niri/scripts/sttt scanline --scanline-reverse true -d 0.4 -c 5
	#fastfetch
    kitten icat ~/.config/niri/pics/rugtrain.gif
    set username (whoami)
    echo "				Welcome back, $username!"
    export EDITOR="nvim"
    export VISUAL="nvim"
    fish_add_path .local/bin
    fish_add_path .cargo/bin
    set -U fish_color_command blue
    set -U fish_color_param normal
    set -U fish_color_error red

    alias xs="paru -S"
    alias xr="paru -Runs"
    alias xu="paru"

    alias nvidia-gpu="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
    alias e="nvim"
    alias vim="nvim"
    alias vi="nvim"
    alias se="sudo -E -s nvim"
end
