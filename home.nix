{config, pkgs, ...} :
{
	home.username = "omkar";
	home.homeDirectory = "/home/omkar";

	# Packages in home directory

	home.packages = with pkgs; [
		git
		gh
		starship
	];

	programs.git = {
		enable = true;
		userName = "omkar-mohanty";
		userEmail = "franzohouser@gmail.com";
	};

	programs.starship = {
		enable = true;
	};

	programs.bash = {
   		 enable = true;
   		 enableCompletion = true;
   		 # TODO add your custom bashrc here
   		 bashrcExtra = ''
   		   export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
   		 '';
	};

	programs.home-manager.enable = true;
}
