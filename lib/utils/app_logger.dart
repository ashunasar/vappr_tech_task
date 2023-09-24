import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
//* print function to print log messages
  static void printLog(Object? value, {bool isError = false}) {
    if (kDebugMode) {
      String horizontalDividerTop =
          '───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────\n';
      String horizontalDividerBottom =
          '\n───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────';

      String color = AnsiColor.yellow;
      if (isError) {
        color = AnsiColor.magenta;
      }
      log('$color$horizontalDividerTop$value$horizontalDividerBottom$color');
    }
  }
}

class AnsiColor {
  static const String magenta = '\x1B[35m';

  static const String red = '\x1B[31m';

  static const String cyan = '\x1B[36m';

  static const String blue = '\x1B[34m';

  static const String yellow = '\x1B[33m';

// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m
}
