{
  username,
  pkgs,
  ...
}: {
  security.rtkit.enable = true;
  security.pam.services.swaylock = {};
  security.pam.services.hyprlock = {};

  security.sudo.enable = true;
  security.sudo.extraRules = [
    {
      users = ["${username}"];
      commands = [
        {
          command = "ALL";
          options = ["NOPASSWD"];
        }
      ];
    }
  ];

  # Enable automatic login for the user.
  services.getty.autologinUser = "${username}";
  environment.systemPackages = with pkgs; [
    pass
    pass-wayland
    pass-git-helper

    gopass
    gopass-jsonapi

    sops
  ];
}
