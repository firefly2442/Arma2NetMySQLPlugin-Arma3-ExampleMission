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


			class Background: AS_PLO_IGUIBack
			{
				idc = AS_LOADOUTS_BCKGRND;
				x = 4.5 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 31 * GUI_GRID_W;
				h = 17.5 * GUI_GRID_H;
			};

	};


	class controls {


			class Texttitle: AS_PLO_RscText
			{
				idc = AS_LOADOUTS_TITLE;
				text = "[AS] Loadout System"; //--- ToDo: Localize;
				x = 5 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
			};
			class LOlistbox: AS_PLO_RscListbox
			{
				idc = AS_LOADOUTS_dropDownMenu;
				x = 5.5 * GUI_GRID_W + GUI_GRID_X;
				y = 6 * GUI_GRID_H + GUI_GRID_Y;
				w = 16 * GUI_GRID_W;
				h = 14.5 * GUI_GRID_H;
				tooltip = "Click to select a loadout.";
			};
			class Usebtn: AS_PLO_RscButton
			{
				idc = AS_LOADOUTS_useButton;
				text = "Use Loadout"; //--- ToDo: Localize;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 5.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				tooltip = "Select a loadout from the left box and click to use the loadout.";
				onButtonClick = "execVM 'as_loadouts\selectLoadout.sqf'";
			};
			class Updatebtn: AS_PLO_RscButton
			{
				idc = AS_LOADOUTS_updateButton;
				text = "Update Loadout"; //--- ToDo: Localize;
				x = 24.01 * GUI_GRID_W + GUI_GRID_X;
				y = 7.64 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				onButtonClick = "execVM 'as_loadouts\updateLoadout.sqf'";
				tooltip = "Select a loadout from the left box and click to update it.";
			};
			class Deletebtn: AS_PLO_RscButton
			{
				idc = AS_LOADOUTS_deleteButton;
				text = "Delete Loadout"; //--- ToDo: Localize;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 10 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				tooltip = "Select a loadout from the left box and click to delete it.";
				onButtonClick = "execVM 'as_loadouts\deleteLoadout.sqf'";
			};
			class Nameeditbox: AS_PLO_RscEdit
			{
				idc = AS_LOADOUTS_LoadoutName;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				tooltip = "Place the name of your loadout here.";
			};
			class Textname: AS_PLO_RscText
			{
				idc = AS_LOADOUTS_textName;
				text = "Loadout Name"; //--- ToDo: Localize;
				x = 26.5 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				sizeEx = .8 * GUI_GRID_H;
			};
			class Createbtn: AS_PLO_RscButton
			{
				idc = AS_LOADOUTS_createButton;
				text = "Create Loadout"; //--- ToDo: Localize;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 16 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				tooltip = "After naming the loadout click to create it.";
				onButtonClick = "execVM 'as_loadouts\createNewLoadout.sqf'";
			};
			class NameFrame: AS_PLO_RscFrame
			{
				idc = AS_LOADOUTS_nameFrame;
				x = 23.5 * GUI_GRID_W + GUI_GRID_X;
				y = 13.18 * GUI_GRID_H + GUI_GRID_Y;
				w = 11.5317 * GUI_GRID_W;
				h = 2.16931 * GUI_GRID_H;
			};
			class closebtn: AS_PLO_RscButton
			{
				idc = AS_LOADOUTS_closeButton;
				text = "Close"; //--- ToDo: Localize;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 19 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				onButtonClick = "CloseDialog 0;";
			};



	};
};
