// Copyright 2020-2022 TechAurelian. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../common/app_settings.dart';
import '../common/app_strings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required this.appSettings,
  });

  final AppSettings appSettings;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settingsTitle),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              AppStrings.countdownFormatTitle,
//              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ...CountdownFormat.values.map((format) => _buildRadioTile(format)),
//          SwitchListTile(
//            activeColor: Colors.black,
//            value: widget.appSettings.counterTapMode,
//            title: Text(AppStrings.counterTapModeTitle),
//            subtitle: Text(AppStrings.counterTapModeSubtitle),
//            onChanged: (bool value) => setState(() => widget.appSettings.counterTapMode = value),
//          )
        ],
      ),
    );
  }

  Widget _buildRadioTile(CountdownFormat format) {
    return ListTile(
      title: Text(describeEnum(format)),
      leading: Radio<CountdownFormat>(
        value: format,
        groupValue: widget.appSettings.countdownFormat,
        onChanged: (CountdownFormat? value) {
          if (value != null) {
            setState(() {
              widget.appSettings.countdownFormat = value;
            });
          }
        },
      ),
    );
  }
}
