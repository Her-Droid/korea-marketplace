import 'package:flutter/material.dart';

abstract final class UiKitColors {
  static const primary = Color(0xFF5D5FEF);
  static const yellow = Color(0xFFFFD233);

  static const main = primary;
  static const light = Color(0xFF9FA2FF);
  static const surface = Color(0xFFF6F6F6);
  static const hover = Color(0xFF4A4CC9);
  static const pressed = Color(0xFF3A3DA5);
  static const border = Color(0xFFD1D1D1);
  static const focus = Color(0xFFB5B7FF);

  static const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF74FBDE), Color(0xFF3C41BF)],
  );

  static const neutral = {
    10: Color(0xFFFFFFFF),
    20: Color(0xFFF6F6F6),
    30: Color(0xFFECECEC),
    40: Color(0xFFD7D7D7),
    50: Color(0xFFC8C8C8),
    60: Color(0xFFA8A8A8),
    70: Color(0xFF838383),
    80: Color(0xFF767D88),
    90: Color(0xFF525252),
    100: Color(0xFF3E3E3E),
  };
}
