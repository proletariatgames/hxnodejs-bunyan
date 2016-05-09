package js.npm.bunyan;

@:enum abstract Level(Int) {
  var Trace = 10;
  var Debug = 20;
  var Info = 30;
  var Warn = 40;
  var Error = 50;
  var Fatal = 60;
}

@:enum abstract LevelStr(String) {
  var Trace = "trace";
  var Debug = "debug";
  var Info = "info";
  var Warn = "warn";
  var Error = "error";
  var Fatal = "fatal";
}
