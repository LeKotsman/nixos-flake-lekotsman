{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    btop
    eza
    fzf
    git
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
    neofetch
    neovim
    tldr
    unzip
    openssl
    openssl.dev
    wget
    curl
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide
  ];
}