# Haxe/hxnodejs externs for the [bunyan](https://www.npmjs.com/package/bunyan) npm library

Tested using `bunyan` version **1.8.1**

Example:
```haxe
import js.npm.Bunyan;

logger = Bunyan.createLogger({name:"my_app"});
logger.info("Hello, bunyan.");
```
