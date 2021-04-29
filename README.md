# `url_protocol`

A unified library to register custom URL protocol handlers across supported platforms.

## Compatibility

This library is designed for use within Flutter and primarily to serve on
Desktop platforms that require extra programmatic registration of URL handlers.

In other words, this library is meant to provide protocol registration on the
Windows and Linux (coming soon) platforms.

## Usage

Use the following to register or unregister a URL handler protocol.

```dart
import 'package:url_protocol/url_protocol.dart';

void main() {
  // Register a new custom URL protocol handler. Opening test-url-protocol://test
  // will run the executable with the arguments: -url test-url-protocol://test
  registerProtocolHandler('test-url-protocol', arguments: ['-url', '%s']);

  // Unregister and remove custom URL protocol handler
  unregisterProtocolHandler('test-url-protocol');
}
```

## Helpful Hints

Use this library with [multi_instance_handler](http://pub.dev/packages/multi_instance_handler)
to manage forwarding of the opened URL to the active instance of your application
on Desktop platforms.

## TODO

- [ ] Instructions for Android, iOS, macOS
- [ ] Support for Linux

## License & Author

This library was written by Loren Segal and is licensed under the terms of
the MIT license.
