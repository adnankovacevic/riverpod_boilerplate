import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
        child: SettingsList(
          shrinkWrap: false,
          contentPadding: const EdgeInsets.all(0),
          lightTheme: const SettingsThemeData(
            settingsListBackground: Colors.transparent,
            settingsSectionBackground: Colors.white,
            // trailingTextColor: context.theme.primaryColor,
          ),
          sections: [
            SettingsSection(
              margin: const EdgeInsetsDirectional.symmetric(
                  vertical: 10, horizontal: 0),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "Account",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "Notifications",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "Appearance",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "Privacy & Security",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "Help & Support",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
                SettingsTile.navigation(
                  trailing: const SizedBox.shrink(),
                  title: const Text(
                    "About",
                    // style: context.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
