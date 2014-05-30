// AS Loadouts - Delete Loadout
#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"
#include "dialog\definitions.sqf"
disableSerialization;

// Identify Player
_puid = getPlayerUID player;
//escape characters to minimize an SQL injection attack
_puid = [_puid] call FUNC(sanitizeInput);

_dlg = findDisplay AS_LOADOUTS_DIALOG;
_loadoutsDropDown = _dlg displayCtrl AS_LOADOUTS_dropDownMenu;

// Check if player has a loadout selected.
if ((lbSize _loadoutsDropDown) == 0) exitwith {hint "You must select a loadout!";};

_unit = player;
_loadoutName = (_unit call FUNC(getLoadouts)) select (lbCurSel _loadoutsDropDown);
//escape characters to minimize an SQL injection attack
_loadoutName = [_loadoutName] call FUNC(sanitizeInput);
//TRACE_2("Deleting loadout for: ",_loadoutName,_puid);

["as_delete_loadout", [_puid, _loadoutName]] call CBA_fnc_globalEvent;
//closedialog 0;

// Get and Re-Cache the loadouts
_unit call FUNC(getLoadouts);

// Repopulate the GUI
execVM "as_loadouts\dialog\as_plo_gui_setup.sqf";