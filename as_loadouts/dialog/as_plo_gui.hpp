// -AS Loadouts 
// 
// Riouken 
//


// Included in description.ext
//#include <as_loadouts\dialog\as_plo_ui_base.hpp>


// Dialog
// http://community.bistudio.com/wiki/Dialog_Control


#include "definitions.sqf"


class AS_PLO_GUI {
	idd = AS_LOADOUTS_DIALOG;
	movingEnable = true;
	onLoad = execVM "as_loadouts\dialog\as_plo_gui_setup.sqf";
	objects[] = {};
	class controlsBackground {
			class Background: AS_PLO_RscPicture
			{
				idc = AS_LOADOUTS_BCKGRND;
				x = 0.0727122;
				y = 0.0631812;
				w = 0.80098;
				h = 1.00305;
			};

	};


	class controls {


			class LOlistbox: AS_PLO_RscListbox
			{
				idc = AS_LOADOUTS_dropDownMenu;
				x = 0.113562;
				y = 0.186274;
				w = 0.408006;
				h = 0.549892;
				tooltip = "Click to select a loadout.";
			};
			class Createbtn: AS_PLO_RscShortcutButton
			{
				idc = 1700;
				text = "Create Loadout";
				x = 0.563725;
				y = 0.655773;
				w = 0.246242;
				h = 0.115251;
				tooltip = "After naming the loadout click to create it.";
				onButtonClick = "execVM 'as_loadouts\createNewLoadout.sqf'";
			};
			class Nameeditbox: AS_PLO_RscEdit
			{
				idc = AS_LOADOUTS_LoadoutName;
				x = 0.571895;
				y = 0.601307;
				w = 0.224185;
				h = 0.0520696;
				tooltip = "Place the name of your loadout here.";
			};
			class Deletebtn: AS_PLO_RscShortcutButton
			{
				idc = 1701;
				text = "Delete Loadout";
				x = 0.566994;
				y = 0.392156;
				w = 0.246242;
				h = 0.115251;
				tooltip = "Select a loadout from the left box and click to delete it.";
				onButtonClick = "execVM 'as_loadouts\deleteLoadout.sqf'";
			};
			class Usebtn: AS_PLO_RscShortcutButton
			{
				idc = 1702;
				text = "Use Loadout";
				x = 0.568629;
				y = 0.17756;
				w = 0.246242;
				h = 0.115251;
				tooltip = "Select a loadout from the left box and click to use the loadout.";
				onButtonClick = "execVM 'as_loadouts\selectLoadout.sqf'";
			};
			class Updatebtn: AS_PLO_RscShortcutButton
			{
				idc = 1703;
				text = "Update Loadout";
				x = 0.566993;
				y = 0.283225;
				w = 0.246242;
				h = 0.115251;
				onButtonClick = "execVM 'as_loadouts\updateLoadout.sqf'";
				tooltip = "Select a loadout from the left box and click to update it.";
			};
			class Textname: AS_PLO_RscText
			{
				idc = 1000;
				text = "Loadout Name:";
				x = 0.576797;
				y = 0.542484;
				w = 0.21438;
				h = 0.0477125;
				colorText[] = {1,1,1,1};
				style = ST_CENTER;
			};
			class Texttitle: AS_PLO_RscText
			{
				idc = AS_LOADOUTS_TITLE;
				text = "[AS] Loadout System";
				x = 0.124182;
				y = 0.106755;
				w = 0.287909;
				h = 0.0379085;
				colorText[] = {1,1,1,1};
			};
			class closebtn: AS_PLO_RscShortcutButton
			{
				idc = 1704;
				text = "Close";
				x = 0.563725;
				y = 0.77342;
				w = 0.246242;
				h = 0.115251;
				onButtonClick = "CloseDialog 0;";
			};

	};
};




			