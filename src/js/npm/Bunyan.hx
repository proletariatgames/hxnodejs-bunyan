package js.npm;

import js.npm.bunyan.Logger;
import js.npm.bunyan.Options;

@:jsRequire("bunyan")
extern class Bunyan {
  @:selfCall static function createLogger(options : Options) : Logger;
}
