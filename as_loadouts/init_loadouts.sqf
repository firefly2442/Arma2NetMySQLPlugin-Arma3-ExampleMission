// AS Loadouts - Initialize/Get Current Loadouts

//http://dev-heaven.net/docs/cba/files/extended_eventhandlers/script_macros_common-hpp.html#DEBUG_MODE_FULL
#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"

if (isServer) then 
{   
	execVM "as_loadouts\server_events.sqf";
};

//initialize functions
FUNC(getAllWeapons) = compile preprocessFileLineNumbers "as_loadouts\getAllWeapons.sqf";
FUNC(getLoadouts) = compile preprocessFileLineNumbers "as_loadouts\getLoadouts.sqf";
FUNC(formatArray) = compile preprocessFileLineNumbers "as_loadouts\formatArray.sqf";
FUNC(sanitizeInput) = compile preprocessFileLineNumbers "as_loadouts\sanitizeInput.sqf";

//UI Editor
//https://community.bistudio.com/wiki/User_Interface_Editor_%28Arma_2%29
