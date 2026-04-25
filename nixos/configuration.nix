 #Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs,lib,inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.niri.nixosModules.niri
    ];
  # Nix包管理器配置以及开启flakes特性
  nix.settings = {
    #substituters = [
    #  "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store?priority=10"  # 添加清华大学镜像源，提高下载速度
      #"https://mirrors.ustc.edu.cn/nix-channels/store?priority=5"  # 添加中科大镜像源
      #"https://cache.nixos.org/"  # 默认官方缓存
    #];
    experimental-features = [ "nix-command" "flakes" ];  # 启用实验性功能：nix命令增强和flakes支持
  };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelParams = [
    # 强制指定输出模式：格式为 <输出>:<分辨率>@<刷新率>
    "video=HDMI-A-1:1920x1080@144"
];
  networking.hostName = "nixos-xiaoxie"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Shanghai";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
   fcitx5.addons = with pkgs; [
    fcitx5-mozc
      fcitx5-gtk
           fcitx5-gtk             # alternatively, kdePackages.fcitx5-qt
       qt6Packages.fcitx5-chinese-addons
      fcitx5-nord            # a color theme
    ]; 
  };
 i18n.inputMethod.fcitx5.waylandFrontend = true;
 services.xserver.desktopManager.runXdgAutostartIfNone = true;
 #environment.variables = {
 # };

  environment.systemPackages = with pkgs; [
     vscode
     git
     vim
     wget
     go-musicfox
     clinfo
     lact
     wechat
     blender
     xwayland-satellite # xwayland support
     inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
     linuxKernel.packages.linux_6_19.cpupower
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;
  programs.niri.enable = true;
  programs.niri.package = pkgs.niri;
  programs.regreet = {
  enable = true;
    theme.name = "Adwaita"; 
    font = {
      name = "Cantarell";
      size = 16;
    };
    cursorTheme.name = "Adwaita";
};
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;
  hardware.bluetooth.enable = true;
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #jack.enable = true;
    #media-session.enable = true;
  };
 

services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "performance";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "performance";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 100;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 100;
        CPU_MAX_PERF_ON_BAT = 100;

      };
};
 
  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.xiaoxie = {
    isNormalUser = true;
    description = "xiaoxie";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };


  programs.git = {
    enable = true;
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
};
nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-unwrapped"
    "steam-run"
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 1d";
  services.udisks2.enable = true;

  #虚拟化
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["xiaoxie"];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;
  
  services.todesk.enable = true;
 
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;  # enable copy and paste between host and guest

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}

