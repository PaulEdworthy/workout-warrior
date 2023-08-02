import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFDE4E4),
  100: Color(0xFFF9BABA),
  200: Color(0xFFF68D8D),
  300: Color(0xFFF25F5F),
  400: Color(0xFFEF3C3C),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFEA1717),
  700: Color(0xFFE71313),
  800: Color(0xFFE40F0F),
  900: Color(0xFFDF0808),
});
const int _primaryPrimaryValue = 0xFFEC1A1A;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFA1A1),
  700: Color(0xFFFF8888),
});
const int _primaryAccentValue = 0xFFFFD4D4;