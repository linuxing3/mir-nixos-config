{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  # fileSystems."/" = {
  #   device = "none";
  #   fsType = "tmpfs";
  #   options = ["defaults" "size=25%" "mode=755"];
  # };
  # NR      START        END   SECTORS SIZE NAME UUID
  #  1       2048    1050623   1048576 512M      de0babe8-f7c1-441d-9c1b-2c881993f870
  #  2    1050624  630196223 629145600 300G      d9ea1c50-38e0-46ed-aaae-991977a1c8c3
  #  3  630196224 1259341823 629145600 300G      a56ddb60-9418-4c1e-a747-159081be2ea0
  #  4 1259341824 1657800703 398458880 190G      6e6d0426-185c-4225-9419-ed4da542e94a
  #  5 1657800704 1930430463 272629760 130G      a760134b-5ddd-4335-9a32-023b1ef8896a
  #  6 1930430464 1953523711  23093248  11G      7aea16fe-04ea-466f-a511-2a6849fd9a50
  # fileSystems."/boot" = {
  #   device = "/dev/disk/by-uuid/de0babe8-f7c1-441d-9c1b-2c881993f870";
  #   fsType = "vfat";
  # };
  # /dev/sda2
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/d9ea1c50-38e0-46ed-aaae-991977a1c8c3";
    fsType = "btrfs";
    options = ["subvol=@"];
  };
  # /dev/sda3
  fileSystems."/nix" = {
    device = "/dev/disk/by-uuid/a56ddb60-9418-4c1e-a747-159081be2ea0";
    fsType = "btrfs";
    options = ["subvol=@"];
  };
  # /dev/sda4
  fileSystems."/home" = {
    device = "/dev/disk/by-uuid/6e6d0426-185c-4225-9419-ed4da542e94a";
    fsType = "btrfs";
    options = ["subvol=@"];
  };
  # /dev/sda5
  fileSystems."/root" = {
    device = "/dev/disk/by-uuid/a760134b-5ddd-4335-9a32-023b1ef8896a";
    fsType = "btrfs";
    options = ["subvol=@"];
  };
}
