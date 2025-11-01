{ ... }:

{
  virtualisation.docker = {
    enable = true;
    autoPrune = {
      enable = true;
      flags = [ "--all" ];
      dates = "daily";
      randomizedDelaySec = "5min";
    };
  };
}
