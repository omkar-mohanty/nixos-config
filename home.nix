{
  config,
  pkgs,
  inputs,
  ...
}:

{

  # TODO please change the username & home directory to your own
  home.username = "omkar";
  home.homeDirectory = "/home/omkar";

  # Packages that should be installed to the user profile.

  home.packages = with pkgs; [
    inputs.nixvim.packages.${pkgs.system}.default
    git
    gcc
    ripgrep
    wget
    google-chrome
  ];
  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "omkar-mohanty";
    userEmail = "franzohouser@gmail.com";
  };
}
