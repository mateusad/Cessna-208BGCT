##################################################################
####      dialogs.nas - ePilot                                ####
####                                                          ####
####    Provides aircraft dialogs                             ####
####                                                          ####
##################################################################


var ap_settings = gui.Dialog.new("/sim/gui/dialogs/autopilot/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-ap-dialog.xml");

var at_settings = gui.Dialog.new("/sim/gui/dialogs/autothrottle/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-at-dialog.xml");

var radio = gui.Dialog.new("/sim/gui/dialogs/radios/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-radio-dialog.xml");

var custommap = gui.Dialog.new("/sim/gui/dialogs/custommap/dialog",
        "gui/dialogs/map.xml");

var aircrafthelp = gui.Dialog.new("/sim/gui/dialogs/aircrafthelp/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-help-dialog.xml");

var doors = gui.Dialog.new("/sim/gui/dialogs/doors/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-doors-dialog.xml");

var lightcontrol = gui.Dialog.new("/sim/gui/dialogs/lights/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-lights-dialog.xml");

var checklist_prestart = gui.Dialog.new("/sim/gui/dialogs/checklist-prestart/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-PreStart.xml");

var checklist_startup = gui.Dialog.new("/sim/gui/dialogs/checklist-startup/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Startup.xml");

var checklist_taxi2rwy = gui.Dialog.new("/sim/gui/dialogs/checklist-taxi2rwy/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Taxi2Rwy.xml");

var checklist_pretakeoff = gui.Dialog.new("/sim/gui/dialogs/checklist-pretakeoff/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-PreTakeoff.xml");

var checklist_takeoff = gui.Dialog.new("/sim/gui/dialogs/checklist-takeoff/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Takeoff.xml");

var checklist_descent = gui.Dialog.new("/sim/gui/dialogs/checklist-descent/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Descent.xml");

var checklist_landing = gui.Dialog.new("/sim/gui/dialogs/checklist-landing/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Landing.xml");

var checklist_taxi2ramp = gui.Dialog.new("/sim/gui/dialogs/checklist-taxi2ramp/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Taxi2Ramp.xml");

var checklist_shutdown = gui.Dialog.new("/sim/gui/dialogs/checklist-shutdown/dialog",
        "Aircraft/Cessna-208B/Dialogs/Cessna-208B-checklist-Shutdown.xml");


gui.menuBind("autopilot-settings", "dialogs.ap_settings.open()");
gui.menuBind("autothrottle-settings", "dialogs.at_settings.open()");
gui.menuBind("radio", "dialogs.radio.open()");
gui.menuBind("custommap", "dialogs.custommap.open()");
gui.menuBind("aircrafthelp", "dialogs.aircrafthelp.open()");
gui.menuBind("doors", "dialogs.doors.open()");
gui.menuBind("lightcontrol", "dialogs.lightcontrol.open()");

gui.menuBind("checklist_prestart", "dialogs.checklist_prestart.open()");
gui.menuBind("checklist_startup", "dialogs.checklist_startup.open()");
gui.menuBind("checklist_taxi2rwy", "dialogs.checklist_taxi2rwy.open()");
gui.menuBind("checklist_pretakeoff", "dialogs.checklist_pretakeoff.open()");
gui.menuBind("checklist_takeoff", "dialogs.checklist_takeoff.open()");
gui.menuBind("checklist_descent", "dialogs.checklist_descent.open()");
gui.menuBind("checklist_landing", "dialogs.checklist_landing.open()");
gui.menuBind("checklist_taxi2ramp", "dialogs.checklist_taxi2ramp.open()");
gui.menuBind("checklist_shutdown", "dialogs.checklist_shutdown.open()");
