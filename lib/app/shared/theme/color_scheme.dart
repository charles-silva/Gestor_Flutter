import 'package:flutter/material.dart';

class AppColorScheme {
  static Color get backgroundGradientStart => const Color(0xFF191958);

  static Color get backgroundGradientEnd => const Color(0xFF2A2A6E);

  static Color get primaryColor => Color(0xFF2A2A6E);

  static Color get accentColor {
    return Color(0xFF4CBDB0);
  }

  static Color get darkerAccentColor{
    return Color(0xFF148A7D);
  }

  static LinearGradient get backgroundGradient {
    return LinearGradient(
        colors: [backgroundGradientStart, backgroundGradientEnd],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [1.0, 1.0],
        tileMode: TileMode.clamp);
  }

  static LinearGradient get buttonBackgroundGradient {
    return LinearGradient(
      colors: [darkerAccentColor, accentColor],
        begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp
    );
  }
}
