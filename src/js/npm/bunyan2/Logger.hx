package js.npm.bunyan;

import haxe.extern.Rest;
import js.npm.bunyan.Level;

extern class Logger {

  /**
    Add a node stream
   **/
  @:overload(function(stream : Stream, defaultLevel : Level) : Void {})
  function addStream(stream : Stream, defaultLevel : LevelStr) : Void;

  /**
    Add one or more serializers
   **/
  function addSerializers(serializers : Map<String, Serializer>) : Void;

  /**
    Create a child logger, typically to add a few log record fields.
   **/
  function child(?options : Options, ?simple : Bool) : Logger;

  /**
    A convenience method to reopen 'file' streams on a logger.
    This can be useful with external log rotation utilities that move and re-open log files.
   **/
  function reopenFileStreams() : Void;

  /**
    Change alters the log level of all streams.
    Query returns lowest level of all streams.
   **/
  @:overload(function(level : Level) : Void {})
  @:overload(function(level : LevelStr) : Void {})
  function level() : Level;

  /**
    Query or change the log level of individual streams.
   **/
  @:overload(function(streamIdx : Int) : Level {})
  @:overload(function(streamName : String) : Level {})
  @:overload(function(streamIdx : Int, level : Level) : Void {})
  @:overload(function(streamIdx : Int, level : LevelStr) : Void {})
  @:overload(function(streamName : String, level : Level) : Void {})
  @:overload(function(streamName : String, level : LevelStr) : Void {})
  function levels() : Array<Level>;

  /**
    Log at specific levels.
   **/

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function debug() : Bool;

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function trace() : Bool;

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function info() : Bool;

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function warn() : Bool;

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function error() : Bool;

  @:overload(function(msg : String) : Void {})
  @:overload(function(msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(err : Error) : Void {})
  @:overload(function(err : Error, msg : String) : Void {})
  @:overload(function(err : Error, msgFmt : String, args : Rest<Dynamic>) : Void {})
  @:overload(function(fields : Fields) : Void {})
  @:overload(function(fields : Fields, msg : String) : Void {})
  public function fatal() : Bool;
  }
