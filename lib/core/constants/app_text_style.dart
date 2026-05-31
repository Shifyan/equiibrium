import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle get displayLg => GoogleFonts.manrope(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 40 / 32,
    letterSpacing: -0.02 * 32,
  );

  static TextStyle get displayLgMobile => GoogleFonts.manrope(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 32 / 24,
    letterSpacing: -0.02 * 24,
  );

  static TextStyle get headlineMd => GoogleFonts.manrope(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 28 / 20,
  );

  static TextStyle get bodyLg => GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 24 / 16,
  );

  static TextStyle get bodySm => GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
  );

  static TextStyle get labelCaps => GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 16 / 12,
    letterSpacing: 0.05 * 12,
  );

  static TextStyle get dataMono => GoogleFonts.jetBrainsMono(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
  );
}
