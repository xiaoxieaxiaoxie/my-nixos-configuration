{
  description = "这是小谢的nixos的开始";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
     dms = {
      url = "github:AvengeMedia/DankMaterialShell/stable";
      inputs.nixpkgs.follows = "nixpkgs";
    };
     zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  # 注意这里的 @inputs，它把上面所有输入打包成了 inputs 变量
  outputs = { self, nixpkgs, home-manager,niri, dms,... }@inputs: {

    nixosConfigurations.nixos-xiaoxie = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      # 现在 inherit inputs 就不会报错了
      specialArgs = { inherit inputs home-manager ; };

      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
         home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
         home-manager.extraSpecialArgs = { inherit inputs; };
          # 注意：请确保 /etc/nixos/home.nix 文件存在
          # 并且把下面的 "your-username" 改成你的实际用户名

         home-manager.users.xiaoxie = import ./home.nix;
        }
      ];
    };
  };
}
