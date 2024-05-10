import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/shared/themes/text_styles.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: SettingsList(
                  shrinkWrap: false,
                  physics: const NeverScrollableScrollPhysics(),
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
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "Account",
                            // style: context.bodySmStyle.s18.w600,
                          ),
                        ),
                        SettingsTile.navigation(
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "Notifications",
                            // style: context.bodySmStyle.s18.w600,
                          ),
                        ),
                        SettingsTile.navigation(
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "Appearance",
                            // style: context.bodySmStyle.s18.w600,
                          ),
                        ),
                        SettingsTile.navigation(
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "Privacy & Security",
                            // style: context.bodySmStyle.s18.w600,
                          ),
                        ),
                        SettingsTile.navigation(
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "Help & Support",
                            // style: context.bodySmStyle.s14.w400,
                          ),
                        ),
                        SettingsTile.navigation(
                          // trailing: const SizedBox.shrink(),
                          title: const Text(
                            "About",
                            // style: context.bodySmStyle.s16.w500,
                          ),
                        ),
                        SettingsTile.navigation(
                          trailing: const Text("1.0.0"),
                          title: const Text(
                            "Version",
                            // style: context.bodySmStyle.s16.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                    ),
                    child: Text(
                      'Log out',
                      style: context.bodyLgStyle,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
