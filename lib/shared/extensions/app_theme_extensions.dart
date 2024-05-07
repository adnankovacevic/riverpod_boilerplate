import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/shared/themes/app_colors.dart';
import 'package:riverpod_boilerplate/shared/themes/app_themes.dart';
import 'package:riverpod_boilerplate/shared/themes/text_styles.dart';

extension AppThemeExtension on BuildContext {
  AppTheme get appTheme =>
      Theme.of(this).extension<AppTheme>() ?? const LightAppTheme();

  AppThemeTypography get typographies => appTheme.typographies;

  AppThemeColors get colors => appTheme.colors;

  AppThemeStyles get styles => appTheme.styles;
}

extension TextStyleExtension on TextStyle {
  TextStyle withHeight(double? height) => copyWith(height: height);

  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle withSize(double? size) => copyWith(fontSize: size);

  // Use [merge] instead of [copyWith] as a workaround for this issue:
  // https://github.com/material-foundation/flutter-packages/issues/141
  TextStyle withWeight(FontWeight? weight) =>
      merge(TextStyle(fontWeight: weight));
}
