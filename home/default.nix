{ config, pkgs, pkgs-unstable, lib, inputs, ... }:

{
  imports = [
    ./user
  ];
  
  home.username = "letkosman";
  home.homeDirectory = "/home/lekotsman";
  home.stateVersion = "25.05";
}