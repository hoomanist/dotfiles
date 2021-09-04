{ config, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];
  # bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # filesystems
  boot.supportedFilesystems = [ "ntfs" ];
  # networking
  networking.hostName = "pandemonium";
  networking.networkmanager.enable = true;  
  networking.useDHCP = false;
  networking.interfaces.enp1s0.useDHCP = true;
  networking.interfaces.wlp2s0.useDHCP = true;
  #tor
  services.tor.enable = true;
  services.tor.client.enable = true;
  # timezone
  time.timeZone = "Asia/Tehran";
  # locale
  i18n.defaultLocale = "en_US.UTF-8";
  #xorg
  services.xserver = {
     enable = true;
     layout = "us, ir";
     xkbOptions = "grp:alt_shift_toggle";
     displayManager.lightdm.enable = true;
     windowManager.bspwm.enable = true;
  }; 
  #sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  #touchpad
  services.xserver.libinput.enable = true;
  #user
  users.users.hooman = {
    isNormalUser = true;
    extraGroups = [ "wheel" "network" "storage" ];
    shell = pkgs.fish;
  };
  # packages
  environment.systemPackages = with pkgs; [
    git
    neovim
    wget
    firefox
    alacritty
    rofi
    neofetch
    tmux
    lemonbar
    acpi
    nitrogen
    pfetch
    unzip
    vlc
    tdesktop
    xfce.thunar
    xfce.thunar-volman
    xfce.xfconf
    xfce.tumbler 
    xfce.exo
    xdotool
    wirelesstools
    rustup
    rust-analyzer
  ];
  #fonts
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "Iosevka" ]; })
  ];
  # gpg
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  # using neovim nightly
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];
  # version of the system
  system.stateVersion = "21.05";

}
