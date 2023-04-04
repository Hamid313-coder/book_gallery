import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';

ThemeData getTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: ColorBlock.darkBlue,
      inputDecorationTheme: const InputDecorationTheme(
          iconColor: ColorBlock.accent,
          fillColor: ColorBlock.accent,
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorBlock.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorBlock.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorBlock.accent),
          )),
      textTheme: const TextTheme(
        headline6: TextStyle(
          color: ColorBlock.white,
          fontSize: FontSizing.xSmall,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.3,
        ),
        headline5: TextStyle(
          color: ColorBlock.white,
          fontSize: FontSizing.small,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.3,
        ),
        headline4: TextStyle(
            color: ColorBlock.white,
            fontSize: FontSizing.medium,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.3),
        headline3: TextStyle(
            color: ColorBlock.white,
            fontSize: FontSizing.xLarge,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2),
        headline2: TextStyle(
            color: ColorBlock.white,
            fontSize: FontSizing.xxLarge,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.2),
        headline1: TextStyle(
            color: ColorBlock.white,
            fontSize: FontSizing.huge,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.2),
        bodyText1: TextStyle(
          color: ColorBlock.white,
          fontSize: FontSizing.medium,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.3,
        ),
        bodyText2: TextStyle(
          color: ColorBlock.white,
          fontSize: FontSizing.small,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.3,
        ),
        subtitle1: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        button: TextStyle(
          color: Colors.white,
          fontSize: FontSizing.large,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorBlock.darkBlue,
        selectedItemColor: ColorBlock.accent,
        unselectedItemColor: ColorBlock.white.withOpacity(0.6),
        selectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: FontSizing.small,
          letterSpacing: 0.4,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: FontSizing.small,
          letterSpacing: 0.4,
        ),
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      ),
    );
