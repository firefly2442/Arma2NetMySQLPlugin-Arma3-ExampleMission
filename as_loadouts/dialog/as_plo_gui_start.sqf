// -AS Loadouts 
// 
// Riouken 
//

#define DEBUG_MODE_FULL

// Small function to create the dialog.
ShowDialog = {
	sleep 0.01;
	_ok = createDialog "AS_PLO_GUI";
	waitUntil { !dialog };
};
 
_void = [] call ShowDialog;