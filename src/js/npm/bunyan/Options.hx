package js.npm.bunyan;

import haxe.extern.EitherType;
import js.node.Stream;
import js.npm.bunyan.Level;
import js.npm.bunyan.Serializer;

/**
  For usage, see https://www.npmjs.com/package/bunyan#constructor-api
 **/

typedef Options = {
  var name : String;
  @:optional var level : EitherType<LevelStr, Level>;
  @:optional var stream : js.node.IStream;
  @:optional var streams : Array<js.npm.bunyan.Stream>;
  @:optional var serializers : Map<String, Serializer>;
  @:optional var src : Bool;

  // Any other fields are added to all log records as is.
}
