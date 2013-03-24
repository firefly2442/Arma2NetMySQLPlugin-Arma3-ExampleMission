
private ["_crate","_crate_pos","_crate_script"];
_crate_pos = getMarkerPos "crate";
_crate_loadout = "";
//https://community.bistudio.com/wiki/createVehicleLocal
_crate = "B_supplyCrate_F" createVehicleLocal _crate_pos;

_crate_loadout = "Vanilla_Loadouts.sqf";

_crate setDir 90;
_crate setPos _crate_pos;
player reveal _crate;
[_crate] execVM _crate_loadout;

// Add the action to clear ALL gear
_crate addAction ["<t color='#B0C4DE'>Clear All Gear</t>","clearAllGear.sqf",[],-1,false,true];

// Add the action to the ammo box for Custom loadouts
_crate addAction ["<t color='#FFFFFF'>AS Loadout System</t>","as_loadouts\dialog\as_plo_gui_start.sqf"];