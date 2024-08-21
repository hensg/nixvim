# Nixvim configuration

## Usage

### Flake

```nix
  # flake.nix
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    nixvim = {
      url = "github:hensg/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  #...

  # configuration.nix
  { config, pkgs, inputs, ... }:
  {
    #...
      environment.systemPackages = with pkgs; [
        inputs.nixvim.packages.${system}.default
        #...
      ]
    #...
  }
```

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .
```

## Thanks

@redyf,@primeagen
