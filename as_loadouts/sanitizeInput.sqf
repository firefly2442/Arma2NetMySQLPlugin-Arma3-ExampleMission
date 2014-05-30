#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"

//this sanitization script helps minimize SQL injection attacks
//by escaping characters

PARAMS_1(_string);

TRACE_1("Input parameter: ",_string);

//https://dev.withsix.com/docs/cba/files/strings/fnc_replace-sqf.html

//TODO: add more to escape here?
_string = [_string, '"', '\"'] call CBA_fnc_replace;
_string = [_string, "'", "\'"] call CBA_fnc_replace;

TRACE_1("Returning: ",_string);

//return result
_string