{ config, pkgs, ... }:

{
  home.username = "nan";
  # home.homeDirectory = lib.mkForce "/home/nan/";
  
  home.packages = with pkgs;[
    wget
    git
    vim
    eza

    gpg
  ];

  # git 相关配置
  programs.git = {
    enable = true;
    userName = "nan mu";
    userEmail = "mu.nan.11@outlook.com";
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
