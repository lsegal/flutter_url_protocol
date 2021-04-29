import 'dart:io';

import 'package:url_protocol/url_protocol.dart';

void main() {
  // Register a new custom URL protocol handler. Opening test-url-protocol://test
  // will run the executable with the arguments: -url test-url-protocol://test
  registerProtocolHandler('test-url-protocol', arguments: ['-url', '%s']);

  // Unregister and remove custom URL protocol handler
  unregisterProtocolHandler('test-url-protocol');

  exit(0);
}
