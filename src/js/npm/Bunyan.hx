package js.npm;

import haxe.DynamicAccess;
import js.npm.bunyan.Logger;
import js.npm.bunyan.Options;
import js.npm.bunyan.Serializer;

@:jsRequire("bunyan")
extern class Bunyan {
  /**
    Bunyan's set of standard serializers (req, res, err)
    https://www.npmjs.com/package/bunyan#serializers
   **/
  static var stdSerializers : DynamicAccess<Serializer>;

  /**
    Create a new Bunyan Logger
   **/
  @:selfCall static function createLogger(options : Options) : Logger;
}
