#define DEBUG_MODE_FULL
#include "\x\cba\addons\main\script_macros.hpp"

PARAMS_1(_array);

TRACE_1("Input parameter: ",_array);

_strTwo = "";

//http://forums.bistudio.com/showthread.php?134321-Best-way-to-check-if-a-parameter-is-a-variable-or-an-array&p=2149309&viewfull=1#post2149309
if (typeName _array == "ARRAY") then
{
	for "_i" from 0 to (count _array) -1 do
	{
		if (_i == ((count _array) -1)) then
		{
			_strOne = format ["%1", _array select _i];
			_strTwo = _strTwo + _strOne;
		}else 
		{
			_strOne = format ["%1`", _array select _i];
			_strTwo = _strTwo + _strOne;
		};
	};
} else {
	_strTwo = _array;
};

TRACE_1("Returning: ",_strTwo);

//return result
_strTwo