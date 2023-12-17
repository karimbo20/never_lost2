import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:never_lost/constants/constansts.dart';

class TTextTheme {
  TTextTheme._();

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: kDarkColor),
    headline2: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: kDarkColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: kDarkColor),
    headline4: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: kDarkColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: kDarkColor),
    bodyText1: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: kDarkColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: kDarkColor),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: kWhiteColor),
    headline2: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: kWhiteColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: kWhiteColor),
    headline4: GoogleFonts.poppins(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: kWhiteColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: kWhiteColor),
    bodyText1: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: kWhiteColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: kWhiteColor),
  );
}
