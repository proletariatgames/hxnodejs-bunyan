package js.npm.bunyan;


// Any non-bunyan fields will be merged into the log record.
//
// THESE FIELDS WILL BE OVERRIDDEN BY BUNYAN:
// Bunyan Core fields (https://www.npmjs.com/package/bunyan#core-fields):
//   v: Required. Integer. Added by Bunyan. Cannot be overridden. This is the Bunyan log format version
//   level: Required. Integer. Added by Bunyan. Cannot be overridden.
//   name: Required. String. Provided at Logger creation. You must specify a name for your logger when creating it.
//         Typically this is the name of the service/app using Bunyan for logging.
//   hostname: Required. String. Provided or determined at Logger creation.
//             You can specify your hostname at Logger creation or it will be retrieved vi os.hostname().
//   pid: Required. Integer. Filled in automatically at Logger creation.
//   time: Required. String. Added by Bunyan. Can be overridden.
//         The date and time of the event in ISO 8601 Extended Format format and in UTC, as from Date.toISOString().
//   msg: Required. String. Every log.debug(...) et al call must provide a log message.
//   src: Optional. Object giving log call source info.
//        This is added automatically by Bunyan if the "src: true" config option is given to the Logger.
//        Never use in production as this is really slow.
//
// THESE FIELDS SHOULD BE ADDED, IF APPLICABLE
// Bunyan Recommended fields (https://www.npmjs.com/package/bunyan#recommendedbest-practice-fields):
//   err: Object. A caught JS exception.
//   req_id: String. A request identifier.
//   req: An HTTP server request.
//   res: An HTTP server response.

typedef Fields = Map<String, Dynamic>;
