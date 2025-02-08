{ config, pkgs, ... }:

{
  networking = {
    hostName = "lektNixNB";
    wireless.enable = true;
    networkmanager.enable = true;
	  enableIPv6 = false;
  };
}