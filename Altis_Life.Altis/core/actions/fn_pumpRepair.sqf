#include "..\..\script_macros.hpp"
/*
	File: fn_pumpRepair.sqf

	Description:
	Quick simple action that is only temp.
*/
private["_method"];
if(life_cash < 500) then
{
	if(life_atmbank < 500) exitWith {_method = 0;};
	_method = 2;
}
	else
{
	_method = 1;
};

switch (_method) do
{
	case 0: {hint localize "STR_pumpRepair_notEnoughMoney";};
	case 1: {vehicle player setDamage 0; SUB(life_cash,500); hint localize "STR_pumpRepair_Repaired";};
	case 2: {vehicle player setDamage 0; SUB(life_atmbank,500); hint localize "STR_pumpRepair_Repaired";};
};