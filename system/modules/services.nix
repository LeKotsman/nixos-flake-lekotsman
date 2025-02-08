{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    picom.enable = true;
    openssh.enable = true;
    spice-vdagentd.enable = true;
    xserver = {
      enable = true;
      xkb = {
        layout = "us, ru";
        options = "grp:alt_shift_toggle";
      };
    };
  };
}