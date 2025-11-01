{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    git
    htop
    jq
    nano
    tmux
    wget
  ];

  documentation.enable = false;
}
