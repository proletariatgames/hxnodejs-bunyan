package js.npm.bunyan;

import js.node.Stream;

/**
  For usage, see https://www.npmjs.com/package/bunyan#streams
 **/

typedef Stream = {
  @:optional var level : Level;
  @:optional var type : String;     // valid types include "stream", "file", "rotating-file", and "raw"
  @:optional var stream : js.node.IStream;
  @:optional var path : String;
  @:optional var name : String;
  @:optional var period : String;   // "$number$scope", ie "1d", "3h"
  @:optional var count : Int;
}
