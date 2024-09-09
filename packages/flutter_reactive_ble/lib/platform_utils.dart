import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

// ignore: avoid_classes_with_only_static_members
class PlatformUtils {
  static bool get isMobile {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isIOS || Platform.isAndroid;
    }
  }

  static bool get isDesktop {
    if (kIsWeb) {
      return false;
    } else {
      return Platform.isLinux || Platform.isFuchsia || Platform.isWindows || Platform.isMacOS;
    }
  }

  static bool get isIOS => isMobile && Platform.isIOS;

  static bool get isAndroid => isMobile && Platform.isAndroid;
}
