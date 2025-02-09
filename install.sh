#!/usr/bin/env bash
git clone https://github.com/LeKotsman/nixos-flake-lekotsman.git
sudo nixos-generate-config --show-hardware-config > ./nixos-flake-lekotsman/system/hardware.nix
cd nixos-flake-lekotsman
git add .
NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake .#lektNixNB