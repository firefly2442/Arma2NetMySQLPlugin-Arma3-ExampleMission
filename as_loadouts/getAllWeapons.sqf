#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"

// Identify Player
_puid = getPlayerUID player;
//escape characters to minimize an SQL injection attack
_puid = [_puid] call FUNC(sanitizeInput);

_ammo = (magazines player);
_ammo = [_ammo] call FUNC(formatArray);
_weapons = (weapons player);
_weapons = _weapons + ["Throw","Put"];
_weapons = [_weapons] call FUNC(formatArray);
_items = (items player);
_items = [_items] call FUNC(formatArray);
_assignitems = (assignedItems player);
_assignitems = [_assignitems] call FUNC(formatArray);
_headgear = (headgear player);
_headgear = [_headgear] call FUNC(formatArray);
_goggles = (Goggles player);
_goggles = [_goggles] call FUNC(formatArray);
_vest = (vest player);
_vest = [_vest] call FUNC(formatArray);
_vestitems = (vestItems player);
_vestitems = [_vestitems] call FUNC(formatArray);
_uniform = (uniform player);
_uniform = [_uniform] call FUNC(formatArray);
_uniformitems = (uniformItems player);
_uniformitems = [_uniformitems] call FUNC(formatArray);
_backpack = (backpack player);
_backpack = [_backpack] call FUNC(formatArray);
_packitems = (backpackItems player);
_packitems = [_packitems] call FUNC(formatArray);
_handgunitems = (handgunItems player);
_handgunitems = [_handgunitems] call FUNC(formatArray);
_primarywep = (primaryWeaponItems player);
_primarywep = [_primarywep] call FUNC(formatArray);
_secondarywep = (secondaryWeaponItems player);
_secondarywep = [_secondarywep] call FUNC(formatArray);


//format return value, all weapons separated out into an array
_return_response = [_puid, _ammo, _weapons, _items, _assignitems, _headgear, _goggles, _vest, _vestitems, _uniform, _uniformitems, _backpack, _packitems, _handgunitems, _primarywep, _secondarywep];

TRACE_1("Returning weapon response: ",_return_response);

_return_response
