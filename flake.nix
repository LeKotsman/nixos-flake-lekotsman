{
  description = "LeKotsman NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };
    
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.3.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: 
  let
      system = "x86_64-linux";
      host = "lektNixNB";
      username = "lekotsman";
  in
  {
    nixosConfigurations."${host}" = nixpkgs.lib.nixosSystem {
      specialArgs = {
	      inherit system;
        inherit inputs;
        inherit username;
        inherit host;
      };
      modules = [
        ./system/config.nix
        inputs.stylix.nixosModules.stylix
        lanzaboote.nixosModules.lanzaboote 
        home-manager.users."${username}" = {
          imports = [
            ./home
          ];
        };
      ];
    };
  };
}