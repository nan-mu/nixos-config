{ config, pkgs, ... }:

{
  home.username = "nan";
  # home.homeDirectory = lib.mkForce "/home/nan/";
  
  home.packages = with pkgs;[
    wget
    git
    vim
    eza
  ];

  # git 相关配置
  programs.git = {
    enable = true;
    userName = "nan mu";
    userEmail = "mu.nan.11@outlook.com";
  };

  # bash 相关配置
  programs.bash = {
    enable = true;
    shellAliases = {
      ee = "eza -lh";
      reos = "echo \"In addition to reloading the nixos configuration, .bashrc is also reloaded. This can be a dangerous behavior\" && sudo nixos-rebuild switch --flake . && . ~/.bashrc";
    };
  };


  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
