{
  # inputs,
  # username,
  # host,
  ...
}: {
  imports = [
    ./aseprite/aseprite.nix # pixel art editor
    ./audacious.nix # music player
    ./bat.nix # better cat command
    ./browser.nix # firefox based browser
    ./mail # email accounts
    ./btop.nix # resouces monitor
    ./cava.nix # audio visualizer
    ./discord/discord.nix # discord with gruvbox
    ./fastfetch.nix # fetch tool
    ./fzf.nix # fuzzy finder
    ./gaming.nix # packages related to gaming
    ./ghostty.nix # terminal
    ./git.nix # version control
    ./gnome.nix # gnome apps
    ./gtk.nix # gtk theme
    ./hyprland # window manager
    ./helix.nix # helix text editor
    ./kitty.nix # terminal
    ./lazygit.nix
    ./micro.nix # nano replacement
    ./nemo.nix # file manager
    ./neovim # neovim editor
    ./obsidian.nix
    ./p10k/p10k.nix
    ./packages.nix # other packages
    ./retroarch.nix
    ./rofi.nix # launcher
    ./scripts/scripts.nix # personal scripts
    ./spicetify.nix # spotify client
    ./starship.nix # shell prompt
    ./swaylock.nix # lock screen
    ./swayosd.nix # brightness / volume wiget
    ./swaync/swaync.nix # notification deamon
    ./tmux.nix # tmux terminal window manager
    ./zellij.nix # tmux replacement
    # ./viewnior.nix     # image viewer
    ./vscodium.nix # vscode forck
    ./waybar # status bar
    ./waypaper.nix # GUI wallpaper picker
    ./xdg-mimes.nix # xdg config
    ./yazi.nix # terminal file manager
    ./lf.nix # terminal file manager
    ./ranger.nix # terminal file manager
    ./zsh # shell
  ];
}
