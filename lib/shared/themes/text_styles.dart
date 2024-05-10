import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/generated/fonts.gen.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String poppins = RiverpodFonts.poppins;
}

/// Text style for body
extension TextStyleExtension on BuildContext {
  TextStyle get bodyLgStyle => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get bodyStyle => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  TextStyle get bodySmStyle => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      );

  TextStyle get bodyXsStyle => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 10,
        fontWeight: FontWeight.w300,
      );

  TextStyle get h1Style => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  TextStyle get h2Style => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );

  TextStyle get h3Style => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  TextStyle get h4Style => const TextStyle(
        fontFamily: AppTextStyles.poppins,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
}

extension AppFontWeight on TextStyle {
  /// FontWeight.w100
  TextStyle get w100 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w100,
      );

  /// FontWeight.w200
  TextStyle get w200 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w200,
      );

  /// FontWeight.w300
  TextStyle get w300 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w300,
      );

  /// FontWeight.w400
  TextStyle get w400 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w400,
      );

  /// FontWeight.w500
  TextStyle get w500 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w500,
      );

  /// FontWeight.w600
  TextStyle get w600 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w600,
      );

  /// FontWeight.w700
  TextStyle get w700 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w700,
      );

  /// FontWeight.w800
  TextStyle get w800 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w800,
      );

  /// FontWeight.w900
  TextStyle get w900 => copyWith(
        inherit: true,
        fontWeight: FontWeight.w900,
      );
}

extension AppFontSize on TextStyle {
  /// fontSize: 10
  TextStyle get s10 => copyWith(
        inherit: true,
        fontSize: 10,
      );

  /// fontSize: 11
  TextStyle get s11 => copyWith(
        inherit: true,
        fontSize: 11,
      );

  /// fontSize: 12
  TextStyle get s12 => copyWith(
        inherit: true,
        fontSize: 12,
      );

  /// fontSize: 13
  TextStyle get s13 => copyWith(
        inherit: true,
        fontSize: 13,
      );

  /// fontSize: 14
  TextStyle get s14 => copyWith(
        inherit: true,
        fontSize: 14,
      );

  /// fontSize: 16
  TextStyle get s16 => copyWith(
        inherit: true,
        fontSize: 16,
      );

  /// fontSize: 18
  TextStyle get s18 => copyWith(
        inherit: true,
        fontSize: 18,
      );

  /// fontSize: 20
  TextStyle get s20 => copyWith(
        inherit: true,
        fontSize: 20,
      );

  /// fontSize: 24
  TextStyle get s22 => copyWith(
        inherit: true,
        fontSize: 22,
      );

  /// fontSize: 24
  TextStyle get s24 => copyWith(
        inherit: true,
        fontSize: 24,
      );

  /// fontSize: 24
  TextStyle get s26 => copyWith(
        inherit: true,
        fontSize: 26,
      );

  /// fontSize: 30
  TextStyle get s30 => copyWith(
        inherit: true,
        fontSize: 30,
      );

  /// fontSize: 32
  TextStyle get s32 => copyWith(
        inherit: true,
        fontSize: 32,
      );

  /// fontSize: 35
  TextStyle get s36 => copyWith(
        inherit: true,
        fontSize: 36,
      );

  /// fontSize: 40
  TextStyle get s40 => copyWith(
        inherit: true,
        fontSize: 40,
      );

  /// fontSize: 48
  TextStyle get s48 => copyWith(
        inherit: true,
        fontSize: 48,
      );

  TextStyle get s54 => copyWith(
        inherit: true,
        fontSize: 54,
      );

  TextStyle get s56 => copyWith(
        inherit: true,
        fontSize: 56,
      );

  TextStyle get s60 => copyWith(
        inherit: true,
        fontSize: 60,
      );

  TextStyle get s68 => copyWith(
        inherit: true,
        fontSize: 68,
      );
  TextStyle get s92 => copyWith(
        inherit: true,
        fontSize: 76,
      );
}

extension AppFontColor on TextStyle {
  /// color: AppColors.white,
  TextStyle get whiteColor => copyWith(
        inherit: true,
        color: Colors.white,
      );

  TextStyle get transparentWhiteColor => copyWith(
        inherit: true,
        color: Colors.white.withOpacity(0.5),
      );

  TextStyle get transparentGrayColor => copyWith(
        inherit: true,
        color: Colors.black.withOpacity(0.4),
      );
  TextStyle get grayColor => copyWith(
        inherit: true,
        color: const Color(0xFF6C6A76),
      );

  /// color: AppColors.black,
  TextStyle get blackColor => copyWith(
        inherit: true,
        color: Colors.black,
      );

  TextStyle get bodyColor => copyWith(
        inherit: true,
        color: Colors.black,
      );

  /// color: AppColors.kPrimaryColor,
  TextStyle get primaryColor => copyWith(
        inherit: true,
        color: Colors.black,
      );

  TextStyle get errorColor => copyWith(
        inherit: true,
        color: Colors.red.shade900,
      );
  TextStyle get successColor => copyWith(
        inherit: true,
        color: const Color(0xFF1E7E23),
      );
}

extension AppFontStyle on TextStyle {
  /// color: AppColors.white,
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}

extension AppFontDecoration on TextStyle {
  /// decoration: TextDecoration.overline,
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);

  /// decoration: TextDecoration.underline,
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  /// decoration: TextDecoration.overline,
  TextStyle get noneDecoration => copyWith(decoration: TextDecoration.none);

  /// decoration: TextDecoration.lineThrough,
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
}

class AppThemeTypography {
  final TextStyle headingLarge;
  final TextStyle heading;
  final TextStyle headingSmall;
  final TextStyle bodyExtraLarge;
  final TextStyle bodyLarge;
  final TextStyle body;
  final TextStyle bodySmall;
  final TextStyle bodyExtraSmall;
  final TextStyle captionLarge;
  final TextStyle caption;
  final TextStyle captionSmall;

  const AppThemeTypography({
    this.headingLarge = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w900,
    ),
    this.heading = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w900,
    ),
    this.headingSmall = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
    ),
    this.bodyExtraLarge = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    this.bodyLarge = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    this.body = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    this.bodySmall = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    this.bodyExtraSmall = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.captionLarge = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    this.caption = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    this.captionSmall = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
  });

  AppThemeTypography lerp(covariant dynamic other, double t) {
    if (other is! AppThemeTypography) return this;

    return AppThemeTypography(
      headingLarge: TextStyle.lerp(headingLarge, other.headingLarge, t)!,
      heading: TextStyle.lerp(heading, other.heading, t)!,
      headingSmall: TextStyle.lerp(headingSmall, other.headingSmall, t)!,
      bodyExtraLarge: TextStyle.lerp(bodyExtraLarge, other.bodyExtraLarge, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyExtraSmall: TextStyle.lerp(bodyExtraSmall, other.bodyExtraSmall, t)!,
      captionLarge: TextStyle.lerp(captionLarge, other.captionLarge, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      captionSmall: TextStyle.lerp(captionSmall, other.captionSmall, t)!,
    );
  }
}
