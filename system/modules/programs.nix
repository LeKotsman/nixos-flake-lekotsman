{ config, pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
    configPackages = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal
    ];
  };

  programs = {
    firefox.enable = true;
    brave.enable = true;

    hyprland = {
      enable = true;
      xwayland = {
        enable = true;
      };
      portalPackage = pkgs.xdg-desktop-portal-hyprland;

    };
    
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };

    zsh.enable = true;
  };
}