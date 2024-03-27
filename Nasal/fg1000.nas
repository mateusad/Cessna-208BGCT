var nasal_dir = getprop("/sim/fg-root") ~ "/Aircraft/Instruments-3d/FG1000/Nasal/";
io.load_nasal(nasal_dir ~ 'FG1000.nas', "fg1000");
var nasal_dir = getprop("/sim/fg-root") ~ "/Aircraft/Instruments-3d/FG1000/Nasal/";
io.load_nasal(nasal_dir ~ 'Interfaces/GenericInterfaceController.nas', "fg1000");

var interfaceController = fg1000.GenericInterfaceController.getOrCreateInstance();
interfaceController.start();

# Create the FG1000
var fg1000system = fg1000.FG1000.getOrCreateInstance();

# Create a PFD as device 1, MFD as device 2
fg1000system.addPFD(index:1);
fg1000system.addMFD(index:2);

# Map the devices to placement objects Screen{i}, in this case Screen1 and Screen2
fg1000system.display(index:1);
fg1000system.display(index:2);

# Show the devices
fg1000system.show(index:1);
fg1000system.show(index:2);

#  Display a GUI version of device 1 at 50% scale.
#fg1000system.displayGUI(index:1, scale:0.5);

# Switch the FG1000 on/off depending on power.
setlistener("/systems/electrical/outputs/gps", func(n) {
    if (n.getValue() > 0) {
      fg1000system.show();
      setprop("/instrumentation/FG1000/Lightmap", getprop("/controls/lighting/inst-lights-dim"));
    } else {
      fg1000system.hide();
      setprop("/instrumentation/FG1000/Lightmap", 0.0);
    }
}, 0, 0);

# Control the backlighting of the bezel based on the avionics light knob
setlistener("/controls/lighting/inst-lights-dim", func(n) {
    if (getprop("/systems/electrical/outputs/gps") > 5.0) {
      setprop("/instrumentation/FG1000/Lightmap", n.getValue());
    } else {
      setprop("/instrumentation/FG1000/Lightmap", 0.0);
    }
}, 0, 0);