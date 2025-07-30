{ config, pkgs, ... }: {
  imports = [
    ./disko.nix
  ];

  disko.enableConfig = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "mini-nixos";
  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  users.users.root.initialPassword = "nixos";

  system.stateVersion = "25.05";
}

