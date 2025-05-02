{
  # inputs,
  # username,
  # host,
  ...
}: {
  imports = [
    ./bat.nix # better cat command
    ./mail # email accounts
    ./btop.nix # resouces monitor
    ./fastfetch.nix # fetch tool
    ./fzf.nix # fuzzy finder
    ./git.nix # version control
    ./helix.nix # helix text editor
    ./kitty.nix # terminal
    ./lazygit.nix
    ./micro.nix # nano replacement
    ./nemo.nix # file manager
    ./neovim # neovim editor
    ./p10k/p10k.nix
    ./scripts/scripts.nix # personal scripts
    ./spicetify.nix # spotify client
    ./starship.nix # shell prompt
    ./tmux.nix # tmux terminal window manager
    ./yazi.nix # terminal file manager
    ./lf.nix # terminal file manager
    ./zsh # shell
    # gui
    ./rofi.nix # launcher
    ./browser.nix # firefox based browser
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./swaylock.nix # lock screen
    ./swayosd.nix # brightness / volume wiget
    ./swaync/swaync.nix # notification deamon
    ./waybar # status bar
    ./waypaper.nix # GUI wallpaper picker
    ./xdg-mimes.nix # xdg config
  ];
}
