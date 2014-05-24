//http://community.bistudio.com/wiki/isServer
if (isServer) then
{
	//Load up Arma2NET during initialization for a slight performance bump
	//https://github.com/ScottNZ/Arma2NET/wiki/Usage#performance
	_ret = ("Arma2Net" callExtension "")
};

// This creates the ammo box and fills it.
execVM "local_gear.sqf";

// This is how you start up the AS Loadout system.You can also alter the settings in this file.
execVM "as_loadouts\init_loadouts.sqf";