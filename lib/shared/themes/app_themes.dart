import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/shared/themes/app_colors.dart';
import 'package:riverpod_boilerplate/shared/themes/text_styles.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final String name;
  // final String fontFamily;
  final Brightness brightness;
  final AppThemeColors colors;
  final AppThemeTypography typographies;
  final AppThemeStyles styles;

  const AppTheme({
    required this.name,
    required this.brightness,
    required this.colors,
    this.styles = const AppThemeStyles(),
    this.typographies = const AppThemeTypography(),
    // this.fontFamily = FontFamily.circularStd,
  });

  ColorScheme get baseColorScheme => brightness == Brightness.light //
      ? const ColorScheme.light()
      : const ColorScheme.dark();

  ThemeData get themeData => ThemeData(
        useMaterial3: false,
        platform: TargetPlatform.iOS,
        extensions: [this],
        brightness: brightness,
        primarySwatch: colors.primarySwatch,
        primaryColor: colors.primary,
        unselectedWidgetColor: colors.hint,
        disabledColor: colors.disabled,
        scaffoldBackgroundColor: colors.background,
        hintColor: colors.hint,
        dividerColor: colors.border,
        // fontFamily: fontFamily,
        colorScheme: baseColorScheme.copyWith(
          primary: colors.primary,
          onPrimary: colors.textOnPrimary,
          secondary: colors.secondary,
          onSecondary: colors.textOnPrimary,
          error: colors.error,
          shadow: colors.border,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleTextStyle: typographies.body,
          centerTitle: true,
          color: Colors.transparent,
          foregroundColor: colors.text,
          surfaceTintColor: colors.text,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: colors.text,
          unselectedLabelColor: colors.text.withOpacity(0.4),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: styles.buttonLarge.copyWith(
            side: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? BorderSide(color: colors.disabled)
                  : null;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: styles.buttonLarge.copyWith(
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
            foregroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.disabled)
                  ? colors.disabled
                  : null; // Defer to the widget's default.
            }),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 42),
          filled: true,
          fillColor: colors.backgroundDark,
          hintStyle: typographies.bodySmall.copyWith(
            fontWeight: FontWeight.w500,
            color: colors.text.withOpacity(0.4),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
          prefixIconColor: colors.text,
          suffixIconColor: colors.text,
        ),
        checkboxTheme: CheckboxThemeData(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: BorderSide(color: colors.border),
        ),
        radioTheme: const RadioThemeData(
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colors.secondary,
          foregroundColor: colors.textOnPrimary,
          elevation: 0,
        ),
        dividerTheme: DividerThemeData(
          color: colors.border,
          thickness: 1,
          space: 1,
        ),
      );

  @override
  AppTheme copyWith({
    String? name,
    Brightness? brightness,
    AppThemeColors? colors,
    AppThemeTypography? typographies,
    AppThemeStyles? styles,
  }) {
    return AppTheme(
      brightness: brightness ?? this.brightness,
      name: name ?? this.name,
      colors: colors ?? this.colors,
      typographies: typographies ?? this.typographies,
      styles: styles ?? this.styles,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      name: name,
      brightness: brightness,
      colors: colors.lerp(other.colors, t),
      typographies: typographies.lerp(other.typographies, t),
      styles: styles,
    );
  }
}

class AppThemeStyles {
  final List<BoxShadow> cardShadow;

  final ButtonStyle buttonSmall;
  final ButtonStyle buttonMedium;
  final ButtonStyle buttonLarge;
  final ButtonStyle buttonText;

  const AppThemeStyles({
    this.cardShadow = const [
      BoxShadow(
        color: Color(0x1F000000),
        offset: Offset(0, 8),
        blurRadius: 23,
      ),
    ],
    this.buttonSmall = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size.zero),
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 4, horizontal: 12)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.3),
      ),
    ),
    this.buttonMedium = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size.zero),
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 8, horizontal: 24)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5),
      ),
    ),
    this.buttonLarge = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size.zero),
      padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 12, horizontal: 24)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.5),
      ),
    ),
    this.buttonText = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size.zero),
      backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      padding: MaterialStatePropertyAll(EdgeInsets.zero),
      splashFactory: NoSplash.splashFactory,
      textStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1),
      ),
    ),
  });
}

// Light theme
class LightAppTheme extends AppTheme {
  const LightAppTheme()
      : super(
          name: 'light',
          brightness: Brightness.light,
          colors: const AppThemeColors(
            primarySwatch: Colors.red,
            primary: Color(0xFFFA6555),
            secondary: Color(0xFF6C79DB),
            accent: Color(0xFF27C754),
            background: Color(0xFFFFFFFF),
            backgroundDark: Color(0xFFF5F5F5),
            disabled: Color(0x64303943),
            information: Color(0xFF6C79DB),
            success: Color(0xFF78C850),
            alert: Color(0xFFF6C747),
            warning: Color(0xFFFF9D5C),
            error: Color(0xFFFA6555),
            text: Color(0xFF303943),
            textOnPrimary: Color(0xFFFFFFFF),
            border: Color(0xFFEBEBEB),
            hint: Color(0x99303943),
          ),
        );
}

// Dark theme

class DarkAppTheme extends AppTheme {
  const DarkAppTheme()
      : super(
          name: 'dark',
          brightness: Brightness.dark,
          colors: const AppThemeColors(
            primarySwatch: Colors.red,
            primary: Color(0xFFFA6555),
            secondary: Color(0xFF6C79DB),
            accent: Color(0xFF27C754),
            background: Color(0xFF25272A),
            backgroundDark: Color(0xFF191A1D),
            disabled: Color(0x64303943),
            information: Color(0xFF6C79DB),
            success: Color(0xFF78C850),
            alert: Color(0xFFF6C747),
            warning: Color(0xFFFF9D5C),
            error: Color(0xFFFA6555),
            text: Color(0xFFFFFFFF),
            textOnPrimary: Color(0xFFFFFFFF),
            border: Color(0x33FFFFFF),
            hint: Color(0x99FFFFFF),
          ),
          styles: const AppThemeStyles(
            cardShadow: [
              BoxShadow(
                color: Color(0x4D000000),
                offset: Offset(0, 8),
                blurRadius: 23,
              ),
            ],
          ),
        );
}
