{ config, lib, pkgs, ... }:

let
  vars = import ./vars.nix;
in
{
  ###
  # Imports
  ###
  imports = [
    ./hardware-configuration.nix
    ../os-common/networking.nix
    (import ../os-common/locale.nix ./vars.nix)
    ../os-common/docker.nix
    ../os-common/openssh.nix
    ../os-common/nix.nix
    ../os-common/packages.nix
    (import ../os-common/users.nix ./vars.nix)
    ../os-common/services.nix
  ];
  
  ###
  # Automatically generated for host, don't change
  ###
  boot.tmp.cleanOnBoot = true;
  zramSwap.enable = false;

  ###
  # Server specific
  ###
  networking.hostName = vars.hostname;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "23.11"; # Did you read the comment?
}
