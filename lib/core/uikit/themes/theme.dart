import 'package:flutter/material.dart';
import 'package:korean_marketplace/core/uikit/themes/colors.dart';
import 'package:korean_marketplace/core/uikit/themes/text.dart';

abstract final class UiKitTheme {
  static ThemeData theme = ThemeData(
    fontFamily: UiKitTextStyle.fontFamily,
    cardTheme: const CardTheme(color: Colors.white),
    textTheme: UiKitTextStyle.textTheme.apply(
      bodyColor: UiKitColors.neutral[90],
      displayColor: UiKitColors.neutral[90],
    ),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(
      backgroundColor: UiKitColors.neutral[20],
    ),
  );
}
