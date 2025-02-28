import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class UiKitTextStyle {
  static const fontFamily = 'NotoSans';

  static final textTheme = TextTheme(
    // Display
    displayLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 57.sp,
      letterSpacing: -0.25,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 45.sp,
      letterSpacing: 0,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 36.sp,
      letterSpacing: 0,
    ),

    // Headline
    headlineLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 32.sp,
      letterSpacing: 0,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 28.sp,
      letterSpacing: 0,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24.sp,
      letterSpacing: 0,
    ),

    // Title
    titleLarge: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 22.sp,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      letterSpacing: 0.15,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      letterSpacing: 0.1,
    ),

    // Label
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14.sp,
      letterSpacing: 0.1,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12.sp,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 11.sp,
      letterSpacing: 0.5,
    ),

    // Body
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16.sp,
      letterSpacing: 0.15,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12.sp,
      letterSpacing: 0.4,
    ),
  );
}
