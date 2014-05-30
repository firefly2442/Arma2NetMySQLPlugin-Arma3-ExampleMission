// AS Loadouts - Select Loadout
#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"
#include "dialog\definitions.sqf"
disableSerialization;

// Identify Player
//https://community.bistudio.com/wiki/getPlayerUID
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
//TRACE_1("Select Loadout Name: ",_loadoutName);

ReturnedDatabaseLoadOuts = nil;
["as_get_loadout", [_unit, _puid, _loadoutName]] call CBA_fnc_globalEvent;
//https://community.bistudio.com/wiki/while
while {isNil("ReturnedDatabaseLoadOuts")} do {
	//busy wait until the server responds by setting this variable
	//this variable should have locality ONLY to this specific client
};

_get = ReturnedDatabaseLoadOuts;

//uninitialize our variable so we can use it again later (good memory management or something???) *shrugs*
ReturnedDatabaseLoadOuts = nil;

//TRACE_1("Returned Loadout: ",_get);

//This converts the string to an array
_get = call compile _get;

//TODO: this may change in the future??
//only select the inner array, throw away this outer array shell
_get = _get select 0;
_get = _get select 0;

//TRACE_1("_get variable: ",_get);

//See the "RSLO" mod get_loadout.sqf file as an example
  
//Initialize some empty arrays
_ammo = [];
_weapons = [];
_items = [];
_assignitems = [];
_headgear = [];
_goggles = [];
_vest = [];
_vestitems = [];
_uniform = [];
_uniformitems = [];
_backpack = [];
_packitems = [];
_handgunitems = [];
_primarywep = [];
_secondarywep = [];

//https://dev-heaven.net/docs/cba/files/strings/fnc_find-sqf.html
if ([(_get select 2), "`"] call CBA_fnc_find > 0) then {
	_ammo = [(_get select 2), "`"] call CBA_fnc_split;
} else {
	_ammo set [0, (_get select 2)];
};
if ([(_get select 3), "`"] call CBA_fnc_find > 0) then {
	_weapons = [(_get select 3), "`"] call CBA_fnc_split;
} else {
	_weapons set [0, (_get select 3)];
};
if ([(_get select 4), "`"] call CBA_fnc_find > 0) then {
	_items = [(_get select 4), "`"] call CBA_fnc_split;
} else {
	_items set [0, (_get select 4)];
};
if ([(_get select 5), "`"] call CBA_fnc_find > 0) then {
	_assignitems = [(_get select 5), "`"] call CBA_fnc_split;
} else {
	_assignitems set [0, (_get select 5)];
};
if ([(_get select 6), "`"] call CBA_fnc_find > 0) then {
	_headgear = [(_get select 6), "`"] call CBA_fnc_split;
} else {
	_headgear set [0, (_get select 6)];
};
if ([(_get select 7), "`"] call CBA_fnc_find > 0) then {
	_goggles = [(_get select 7), "`"] call CBA_fnc_split;
} else {
	_goggles set [0, (_get select 7)];
};
if ([(_get select 8), "`"] call CBA_fnc_find > 0) then {
	_vest = [(_get select 8), "`"] call CBA_fnc_split;
} else {
	_vest set [0, (_get select 8)];
};
if ([(_get select 9), "`"] call CBA_fnc_find > 0) then {
	_vestitems = [(_get select 9), "`"] call CBA_fnc_split;
} else {
	_vestitems set [0, (_get select 9)];
};
if ([(_get select 10), "`"] call CBA_fnc_find > 0) then {
	_uniform = [(_get select 10), "`"] call CBA_fnc_split;
} else {
	_uniform set [0, (_get select 10)];
};
if ([(_get select 11), "`"] call CBA_fnc_find > 0) then {
	_uniformitems = [(_get select 11), "`"] call CBA_fnc_split;
} else {
	_uniformitems set [0, (_get select 11)];
};
if ([(_get select 12), "`"] call CBA_fnc_find > 0) then {
	_backpack = [(_get select 12), "`"] call CBA_fnc_split;
} else {
	_backpack set [0, (_get select 12)];
};
if ([(_get select 13), "`"] call CBA_fnc_find > 0) then {
	_packitems = [(_get select 13), "`"] call CBA_fnc_split;
} else {
	_packitems set [0, (_get select 13)];
};
if ([(_get select 14), "`"] call CBA_fnc_find > 0) then {
	_handgunitems = [(_get select 14), "`"] call CBA_fnc_split;
} else {
	_handgunitems set [0, (_get select 14)];
};
if ([(_get select 15), "`"] call CBA_fnc_find > 0) then {
	_primarywep = [(_get select 15), "`"] call CBA_fnc_split;
} else {
	_primarywep set [0, (_get select 15)];
};
if ([(_get select 16), "`"] call CBA_fnc_find > 0) then {
	_secondarywep = [(_get select 16), "`"] call CBA_fnc_split;
} else {
	_secondarywep set [0, (_get select 16)];
};

//Clear out everything so we can assign it

removeAllWeapons player;
removeAllAssignedItems player;
removeAllItems player;
removebackpack player;


if (!((_uniform select 0) == "")) then {
	removeUniform player;
	player addUniform (_uniform select 0);
};
if (!((_vest select 0) == "")) then {
	removeVest player;
	player AddVest (_vest select 0);
};
if (!((_backpack select 0) == "")) then {
	player addbackpack (_backpack select 0);
};
if (!((_headgear select 0) == "")) then {
	removeheadgear player;
	player addheadgear (_headgear select 0);
	player assignItem (_headgear select 0);
};
if (!((_goggles select 0) == "")) then {
	removeGoggles player;
	player addGoggles (_goggles select 0);
	player assignItem (_goggles select 0);
};

{player addmagazine _x} forEach _ammo;
{player additem _x} forEach _items;
{player additem _x; player assignItem _x} forEach _assignitems;
{player addweapon _x} forEach _weapons;

if ((count _secondarywep) > 0) then {
	{player addSecondaryWeaponItem _x} forEach _secondarywep;
};
if ((count _handgunitems) > 0) then {
	{player addHandgunItem _x} forEach _handgunitems;
};
if ((count _primarywep) > 0) then {
	{player addPrimaryWeaponItem _x} forEach _primarywep;
};


// Muzzle Fix
firstmuz = {
   private "_ma";
   //http://forums.bistudio.com/showthread.php?148577-GET-SET-Loadout-%28saves-and-loads-pretty-much-everything%29&p=2351059&viewfull=1#post2351059
   _ma = getArray (configFile >> "CfgWeapons" >> _this >> "muzzles");
   if (_ma select 0 != "this") exitWith {_ma select 0};
   _this
};

_primary = primaryWeapon player;
if (_primary != "") then {
	player selectWeapon (_primary call firstmuz);
};



//TRACE_1("Finished setting up weapon loadout for player: ",_unit);

closedialog 0;

//TRACE_1("Closing the dialog: ",_unit);
