library dynamic_theme;

import 'package:flutter/material.dart';

class DynamicTheme {
  void changeTheme() {}
}

class OdThemeModel extends ChangeNotifier {
  static bool isDark = true;
  bool toggleIcon = true;
  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    isDark = !isDark;
    toggleIcon = !toggleIcon;
    notifyListeners();
  }
}

// for changing the theme add the following code on onTap()
// currentTheme.switchTheme();
// also add dependencies/import in file as:-
// import 'package:od_core_ui_components/src/theme/GlobalTheme.dart';
OdThemeModel kOdCurrentTheme = OdThemeModel();

// To Convert the HexaDecimal String to Integer as Color Class Constructor only take Integer argument
//returning the color in Integer Type.
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class DynamicColorScheme extends ThemeData {
  final Color primary;
  final Color primaryText;
  final Color accent;
  final Color accentText;
  final Color error;
  final Color errorText;
  final Color background;
  final Color backgroundText;
  final Color surface;
  final Color surfaceText;
  final Brightness brightness;
  final Color primaryVarient;
  final Color accentVarient;
  final String primaryHex;
  final String primaryTextHex;
  final String accentHex;
  final String accentTextHex;
  final String errorHex;
  final String errorTextHex;
  final String backgroundHex;
  final String backgroundTextHex;
  final String surfaceHex;
  final String surfaceTextHex;
  final String primaryVarientHex;
  final String accentVarientHex;
  DynamicColorScheme.internal({
    required this.primary,
    required this.primaryText,
    required this.accent,
    required this.accentText,
    required this.error,
    required this.errorText,
    required this.background,
    required this.backgroundText,
    required this.surface,
    required this.surfaceText,
    required this.brightness,
    required this.primaryVarient,
    required this.accentVarient,
    required this.primaryHex,
    required this.primaryTextHex,
    required this.accentHex,
    required this.accentTextHex,
    required this.errorHex,
    required this.errorTextHex,
    required this.backgroundHex,
    required this.backgroundTextHex,
    required this.surfaceHex,
    required this.surfaceTextHex,
    required this.primaryVarientHex,
    required this.accentVarientHex,
  }) : super(
            primary: primary,
            onPrimary: primaryText,
            secondary: accent,
            onSecondary: accentText,
            error: error,
            onError: errorText,
            background: background,
            onBackground: backgroundText,
            surface: surface,
            onSurface: surfaceText,
            primaryVariant: primaryVarient,
            secondaryVariant: accentVarient,
            brightness: brightness);

  // factory LightColorScheme.defaultTheme(){return LightColorScheme._internal(
  //   primary:
  // );}
  // factory _DynamicColorScheme.color({
  //   required Color primary,
  //   required Color primaryText,
  //   required Color accent,
  //   required Color accentText,
  //   required Color error,
  //   required Color errorText,
  //   required Color background,
  //   required Color backgroundText,
  //   required Color surface,
  //   required Color surfaceText,
  //   required Brightness brightness,
  //   required Color primaryVarient,
  //   required Color accentVarient,
  // }) {
  //   return _DynamicColorScheme.internal(
  //     primary: primary,
  //     primaryText: primaryText,
  //     accent: accent,
  //     accentText: accentText,
  //     error: error,
  //     errorText: errorText,
  //     background: background,
  //     backgroundText: backgroundText,
  //     surface: surface,
  //     surfaceText: surfaceText,
  //     brightness: brightness,
  //     primaryVarient: primaryVarient,
  //     accentVarient: accentVarient,
  //   );
  // }
  // factory LightColorScheme.hexCode({required String primary,
  //   required String primaryText,
  //   required String secondry,
  //   required String secondryText,
  //   required String error,
  //   required String errorText,}) {return LightColorScheme.internal(primary: HexColor._getColorFromHex(primary));}
}

class LigthColorScheme extends DynamicColorScheme {
  LigthColorScheme() : super.internal();
}

// ThemeDate for Light Theme
ColorScheme odThemeColorSchemeLight(BuildContext context) {
  return ColorScheme(
      primary: HexColor("42A5F5"),
      primaryVariant: HexColor("0077c2"),
      secondary: HexColor("82868b"),
      secondaryVariant: HexColor("696d71"),
      surface: HexColor('ffffff'),
      background: HexColor('f8f8f8'),
      error: HexColor("ea5455"),
      onPrimary: HexColor("ffffff"),
      onSecondary: HexColor("ffffff"),
      onSurface: HexColor("6e6b7b"),
      onBackground: HexColor("6e6b7b"),
      onError: HexColor('ffffff'),
      brightness: Brightness.light);
}

// ThemeDate for Dark Theme
ColorScheme odThemeColorSchemeDark(BuildContext context) {
  return ColorScheme(
      primary: HexColor("42A5F5"),
      primaryVariant: HexColor("0077c2"),
      secondary: HexColor("82868b"),
      secondaryVariant: HexColor('696d71'),
      surface: HexColor('283046'),
      background: HexColor('161d31'),
      error: HexColor("ea5455"),
      onPrimary: HexColor("ffffff"),
      onSecondary: HexColor("ffffff"),
      onSurface: HexColor("b4b7bd"),
      onBackground: HexColor("b4b7bd"),
      onError: HexColor('ffffff'),
      brightness: Brightness.dark);
}
