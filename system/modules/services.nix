{ config, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    picom.enable = true;
    openssh.enable = true;
    spice-vdagentd.enable = true;
    ipp-usb.enable = true;
    libinput.enable = true
    xserver = {
      enable = false;
      xkb = {
        layout = "us, ru";
        options = "grp:alt_shift_toggle";
      };
    };
    greetd = {
      enable = true;
      vt = 3;
      settings = {
        default_session = {
          user = "lekotsman";
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        };
      };
    };
  };
}