// Copyright 2020-2022 TechAurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import '../screens/home.dart';
import '../widgets/app_drawer.dart';

/// Application wide UI and URL string constants.
class AppStrings {
  static const String appName = 'Weekday Countdown';

  //#region Drawer

  static const String drawerTitle = appName;

  static const Map<DrawerExtraActions, String> drawerExtraTitles = {
    DrawerExtraActions.settings: 'Settings',
    DrawerExtraActions.help: 'Help & feedback',
    DrawerExtraActions.rate: 'Rate app',
  };

  static const String rateAppURL =
      'https://play.google.com/store/apps/details?id=world.helloing.weekdaycountdown';

  static const String helpURL = 'https://helloing.world/weekdaycountdown/';

  //#endregion

  //#region Menu items and functionality

  static const Map<MenuAction, String> menuActions = {
    MenuAction.share: 'Share...',
  };

  //#endregion

  //#region Main functionality

  static String appBarTitle(String dayName) => '$dayName Countdown';

  //#endregion

  //#region Settings

  static const String settingsTitle = 'Settings';
  static const String countdownFormatTitle = 'Countdown format';
//  static const String counterTapModeSubtitle = 'Tap anywhere to increase counter';

  //#endregion
}
