/*
// To load this framework, add the following code in your manifest.json

"commands": [
:
:
{
    "script" : "SketchTypographerPanel.framework/SketchTypographerPanel.js",
    "handlers" : {
        "actions" : {
            "Startup" : "onStartup",
            "OpenDocument":"onOpenDocument",
            "SelectionChanged.finish" : "onSelectionChanged"
        }
    }
}
]
*/

var onStartup = function(context) {
  var SketchTypographerPanel_FrameworkPath = SketchTypographerPanel_FrameworkPath || COScript.currentCOScript().env().scriptURL.path().stringByDeletingLastPathComponent().stringByDeletingLastPathComponent();
  var SketchTypographerPanel_Log = SketchTypographerPanel_Log || log;
  (function() {
    var mocha = Mocha.sharedRuntime();
    var frameworkName = "SketchTypographerPanel";
    var directory = SketchTypographerPanel_FrameworkPath;
    if (mocha.valueForKey(frameworkName)) {
      SketchTypographerPanel_Log("😎 loadFramework: `" + frameworkName + "` already loaded.");
      return true;
    } else if ([mocha loadFrameworkWithName:frameworkName inDirectory:directory]) {
      SketchTypographerPanel_Log("✅ loadFramework: `" + frameworkName + "` success!");
      mocha.setValue_forKey_(true, frameworkName);
      return true;
    } else {
      SketchTypographerPanel_Log("❌ loadFramework: `" + frameworkName + "` failed!: " + directory + ". Please define SketchTypographerPanel_FrameworkPath if you're trying to @import in a custom plugin");
      return false;
    }
  })();
};

var onSelectionChanged = function(context) {
  SketchTypographerPanel.onSelectionChanged(context);
};
