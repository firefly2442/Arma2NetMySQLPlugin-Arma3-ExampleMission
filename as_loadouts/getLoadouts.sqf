#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"

PARAMS_1(_unit);

private ["_loadouts","_dbloadouts"];
_loadouts = [];

if (isNull _unit || !isPlayer _unit) exitWith {
	TRACE_1("Error: unit is null or not a player",_unit);
	_loadouts
};

_parameters = getPlayerUID _unit;

//TRACE_2("parameters variable: ",_parameters,_unit);

//send the request to the server
ReturnedDatabaseLoadOutNames = nil;

["as_get_loadout_names", [_unit, _parameters]] call CBA_fnc_globalEvent;
//https://community.bistudio.com/wiki/while
while {isNil("ReturnedDatabaseLoadOutNames")} do {
	//busy wait until the server responds by setting this variable
	//this variable should have locality ONLY to this specific client
};

_dbloadoutnames = ReturnedDatabaseLoadOutNames;

//TRACE_1("loadouts as retrieved for unit from db",_dbloadoutnames);

//uninitialize our variable so we can use it again later (good memory management or something???) *shrugs*
ReturnedDatabaseLoadOutNames = nil;

//TRACE_2("loadouts as retrieved for unit from db",_dbloadoutnames,_unit);

//This converts the string to an array
_dbloadoutnames = call compile _dbloadoutnames;

//TODO: this may change in the future??
//only select the inner array, throw away this outer array shell
_dbloadoutnames = _dbloadoutnames select 0;

//TRACE_2("loadouts after compile array conversion: ",_dbloadoutnames,_unit);

{ _loadouts set [count _loadouts, _x select 0] } forEach _dbloadoutnames;

// Cache loadouts on the player for later use.

player setVariable ["as_lo_cache", _loadouts];

//TRACE_2("loadouts returned for unit",_loadouts,_unit);

_loadouts
