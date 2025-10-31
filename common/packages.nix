{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    git
    htop
    nano
    wget
  ];

  documentation.enable = false;
}
