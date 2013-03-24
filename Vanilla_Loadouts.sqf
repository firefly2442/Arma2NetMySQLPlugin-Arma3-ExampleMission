private ["_loadout","_crate"];

_crate = _this select 0;
clearMagazineCargo _crate;
clearWeaponCargo _crate;

// Add magazines to crate
_crate addmagazineCargo ["SLAMDirectionalMine_Wire_Mag",5];
_crate addmagazineCargo ["SatchelCharge_Remote_Mag",3];
_crate addmagazineCargo ["HandGrenade",50];
_crate addMagazineCargo ["Chemlight_blue", 10];
_crate addMagazineCargo ["Chemlight_green", 10];
_crate addMagazineCargo ["Chemlight_red", 10];
_crate addmagazineCargo ["smokeshell",50];
_crate addmagazineCargo ["smokeshellRed",50]; 
_crate addmagazineCargo ["smokeshellGreen",50];
_crate addMagazineCargo ["30Rnd_65x39_caseless_green", 60];
_crate addMagazineCargo ["30Rnd_65x39_caseless_green_mag_Tracer", 60];
_crate addMagazineCargo ["30Rnd_65x39_caseless_mag", 60];
_crate addMagazineCargo ["30Rnd_65x39_caseless_mag_Tracer", 60];
_crate addMagazineCargo ["100Rnd_65x39_caseless_mag", 10];
_crate addMagazineCargo ["100Rnd_65x39_caseless_mag_Tracer", 10];
_crate addMagazineCargo ["20Rnd_762x45_mag", 60];
_crate addMagazineCargo ["20Rnd_556x45_UW_mag", 60];
_crate addMagazineCargo ["30Rnd_556x45_Stanag", 60];
_crate addMagazineCargo ["30Rnd_65x39_case_mag", 60];
_crate addMagazineCargo ["30Rnd_65x39_case_mag_Tracer", 60];
_crate addMagazineCargo ["16Rnd_9x21_Mag", 60];
_crate addMagazineCargo ["30Rnd_9x21_Mag", 60];
_crate addMagazineCargo ["200Rnd_65x39_cased_Box", 10];
_crate addMagazineCargo ["200Rnd_65x39_cased_Box_Tracer", 10];
_crate addMagazineCargo ["1Rnd_HE_Grenade_shell", 40];

// Add weapons to crate
_crate addWeaponCargo ["arifle_MX_F", 10];
_crate addWeaponCargo ["arifle_MX_GL_F", 10];
_crate addWeaponCargo ["arifle_MX_SW_F", 10];
_crate addWeaponCargo ["arifle_MXC_F", 10];
_crate addWeaponCargo ["arifle_MXM_F", 10];
_crate addWeaponCargo ["arifle_TRG20_F", 10];
_crate addWeaponCargo ["arifle_TRG21_F", 10];
_crate addWeaponCargo ["arifle_TRG21_GL_F", 10];
_crate addWeaponCargo ["hgun_P07_F", 12];
_crate addWeaponCargo ["LMG_Mk200_F", 10];
_crate addWeaponCargo ["srifle_EBR_F", 10];

// Launcher
_crate addWeaponCargo ["launch_NLAW_F", 5];
_crate addMagazineCargo ["NLAW_F", 5];


// Attachments
_crate addItemCargo ["acc_flashlight", 12];
_crate addItemCargo ["acc_pointer_IR", 12];
_crate addItemCargo ["muzzle_snds_B", 12];
_crate addItemCargo ["muzzle_snds_H", 12];
_crate addItemCargo ["muzzle_snds_H_MG", 12];
_crate addItemCargo ["muzzle_snds_L", 12];
_crate addItemCargo ["optic_Aco", 12];
_crate addItemCargo ["optic_ACO_grn", 12];
_crate addItemCargo ["optic_Arco", 12];
_crate addItemCargo ["optic_Hamr", 12];
_crate addItemCargo ["optic_Holosight", 12];
