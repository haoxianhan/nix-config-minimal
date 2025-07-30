{ config, pkgs, ... }: {
  imports = [
    ./disko.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "mini-nixos";

  disko.enableConfig = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "en_US.UTF-8";
  console.keyMap = "us";

  services.openssh.enable = true;

  users.users.root.initialPassword = "nixos";

  system.stateVersion = "25.05";
}

