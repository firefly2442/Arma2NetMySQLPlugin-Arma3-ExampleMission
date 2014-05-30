// AS Loadouts - Create Loadout
#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"
#include "dialog\definitions.sqf"
disableSerialization;

_allWeapons = [] call FUNC(getAllWeapons);

_dlg = findDisplay AS_LOADOUTS_DIALOG;
_loadoutName = ctrlText (_dlg displayCtrl AS_LOADOUTS_LoadoutName);
//escape characters to minimize an SQL injection attack
_loadoutName = [_loadoutName] call FUNC(sanitizeInput);

_unit = player;
_loNames = (_unit call FUNC(getLoadouts));

//check to make sure the user entered a loadout name and it doesn't already exist
if (_loadoutName != "" && !(_loadoutName in _loNames)) then {
	["as_create_new_loadout", [_allWeapons select 0, _loadoutName, _allWeapons select 1, _allWeapons select 2, _allWeapons select 3, 
								_allWeapons select 4, _allWeapons select 5, _allWeapons select 6, _allWeapons select 7,
								_allWeapons select 8, _allWeapons select 9, _allWeapons select 10, _allWeapons select 11,
								_allWeapons select 12, _allWeapons select 13, _allWeapons select 14,
								_allWeapons select 15]] call CBA_fnc_globalEvent;
	//closedialog 0;
    
    // Get and Re-cache the loadouts.
    _unit call FUNC(getLoadouts);
    
	//clear out the name field
	ctrlSetText [AS_LOADOUTS_LoadoutName, ""];

    // Repopulate the GUI
	execVM "as_loadouts\dialog\as_plo_gui_setup.sqf";
} else {
	if (_loadoutName == "") then {
		hint "You need to specify a name for your loadout.";
	};
	if (_loadoutName in _loNames) then {
		hint "That name is already in your saved loadouts list... You must pick a new one!";
	};
};
