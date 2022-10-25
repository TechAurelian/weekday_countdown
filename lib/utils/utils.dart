// Copyright 2020-2022 TechAurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../common/app_settings.dart';

/// Formats [number] as a decimal, inserting locale-appropriate thousands separators as necessary.
String toDecimalString(BuildContext context, int number) {
  final MaterialLocalizations localizations = MaterialLocalizations.of(context);
  return localizations.formatDecimal(number);
}

/// Launches the specified [URL] in the mobile platform.
///
/// Shows an error [SnackBar] if there is no support for launching the URL.
Future<void> launchUrlExternal(String url) async {
  if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
    debugPrint('Failed to open $url');
  }
}

/// Utility Color extension methods.
extension ColorX on Color {
  /// Returns the contrast color for this color.
  Color contrastOf() =>
      ThemeData.estimateBrightnessForColor(this) == Brightness.light ? Colors.black : Colors.white;
}

String formatCountdown(BuildContext context, Duration countdown, CountdownFormat format) {
  String formatString;

  switch (format) {
    case CountdownFormat.duration:
      formatString = countdown.toString();
      break;
    case CountdownFormat.days:
      formatString = toDecimalString(context, countdown.inDays);
      break;
    case CountdownFormat.hours:
      formatString = toDecimalString(context, countdown.inHours);
      break;
    case CountdownFormat.minutes:
      formatString = toDecimalString(context, countdown.inMinutes);
      break;
    case CountdownFormat.seconds:
      formatString = toDecimalString(context, countdown.inSeconds);
      break;
  }

  return formatString;
}
