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
				idc = 2200;
				x = 4.5 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 31 * GUI_GRID_W;
				h = 17.5 * GUI_GRID_H;
			};

	};


	class controls {


			class Texttitle: AS_PLO_RscText
			{
				idc = 1000;
				text = "[AS] Loadout System"; //--- ToDo: Localize;
				x = 5 * GUI_GRID_W + GUI_GRID_X;
				y = 4 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
			};
			class LOlistbox: AS_PLO_RscListbox
			{
				idc = 1500;
				x = 5.5 * GUI_GRID_W + GUI_GRID_X;
				y = 6 * GUI_GRID_H + GUI_GRID_Y;
				w = 16 * GUI_GRID_W;
				h = 14.5 * GUI_GRID_H;
				tooltip = "Click to select a loadout.";
			};
			class Usebtn: AS_PLO_RscButton
			{
				idc = 1600;
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
				idc = 1601;
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
				idc = 1602;
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
				idc = 1400;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 13.5 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				tooltip = "Place the name of your loadout here.";
			};
			class Textname: AS_PLO_RscText
			{
				idc = 1001;
				text = "Loadout Name"; //--- ToDo: Localize;
				x = 26.5 * GUI_GRID_W + GUI_GRID_X;
				y = 12 * GUI_GRID_H + GUI_GRID_Y;
				w = 5.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				sizeEx = .8 * GUI_GRID_H;
			};
			class Createbtn: AS_PLO_RscButton
			{
				idc = 1603;
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
				idc = 1800;
				x = 23.5 * GUI_GRID_W + GUI_GRID_X;
				y = 13.18 * GUI_GRID_H + GUI_GRID_Y;
				w = 11.5317 * GUI_GRID_W;
				h = 2.16931 * GUI_GRID_H;
			};
			class closebtn: AS_PLO_RscButton
			{
				idc = 1604;
				text = "Close"; //--- ToDo: Localize;
				x = 24 * GUI_GRID_W + GUI_GRID_X;
				y = 19 * GUI_GRID_H + GUI_GRID_Y;
				w = 10.5 * GUI_GRID_W;
				h = 1.5 * GUI_GRID_H;
				onButtonClick = "CloseDialog 0;";
			};



	};
};
