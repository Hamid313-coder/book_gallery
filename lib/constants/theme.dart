import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// getTheme(BuildContext context) {
//   return ThemeData(
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//     primarySwatch: Colors.yellow,
//     brightness: Brightness.light,
//     fontFamily: GoogleFonts.poppins().fontFamily,
//     primaryColor: ColorBlock.primary,
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       foregroundColor: ColorBlock.primary,
//       backgroundColor: Colors.white,
//       elevation: 0,
//       extendedTextStyle:
//           TextStyle(fontWeight: FontWeight.w500, fontSize: FontSizing.medium),
//       shape: StadiumBorder(
//         side: BorderSide(
//           color: ColorBlock.primary,
//           width: 1,
//         ),
//       ),
//     ),
//     dialogTheme: const DialogTheme(
//       shape: RoundedRectangleBorder(
//         borderRadius:
//             borderRadiusLarge, // this is the border radius of the picker
//       ),
//     ),
//     primaryColorLight: const Color(0xffbbdefb),
//     primaryColorDark: const Color(0xff000000),
//     colorScheme: const ColorScheme.light(
//       primary: ColorBlock.primary,
//       secondary: ColorBlock.darkGrey,
//       onSurface: ColorBlock.black,
//       onPrimary: ColorBlock.black,
//     ),
//     canvasColor: ColorBlock.white,
//     scaffoldBackgroundColor: ColorBlock.white,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       showSelectedLabels: true,
//       showUnselectedLabels: true,
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: ColorBlock.white,
//       selectedItemColor: ColorBlock.primary,
//       unselectedItemColor: ColorBlock.darkGrey,
//       selectedLabelStyle: GoogleFonts.poppins(
//         fontWeight: FontWeight.w400,
//         fontSize: FontSizing.small,
//         letterSpacing: 0.4,
//       ),
//       unselectedLabelStyle: GoogleFonts.poppins(
//         fontWeight: FontWeight.w400,
//         fontSize: FontSizing.small,
//         letterSpacing: 0.4,
//       ),
//       landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
//     ),
//     // cardColor: const Color(0xffffffff),
//     // dividerColor: const Color(0x1f000000),
//     highlightColor: ColorBlock.lightGrey,
//     splashColor: ColorBlock.grey,
//     // selectedRowColor: const Color(0xfff5f5f5),
//     // unselectedWidgetColor: const Color(0x8a000000),
//     disabledColor: ColorBlock.darkGrey,
//     toggleableActiveColor: ColorBlock.primary,
//     // secondaryHeaderColor: const Color(0xffe3f2fd),
//     backgroundColor: ColorBlock.white,
//     dialogBackgroundColor: ColorBlock.white,
//     indicatorColor: ColorBlock.primary,
//     hintColor: ColorBlock.grey,
//     // errorColor: const Color(0xffd32f2f),
//     textTheme: const TextTheme(

//       headline6: TextStyle(
//         color: ColorBlock.black,
//         fontSize: FontSizing.xSmall,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//         letterSpacing: 0.3,
//       ),
//       headline5: TextStyle(
//         color: ColorBlock.black,
//         fontSize: FontSizing.small,
//         fontWeight: FontWeight.w700,
//         fontStyle: FontStyle.normal,
//         letterSpacing: 0.3,
//       ),
//       headline4: TextStyle(
//           color: ColorBlock.black,
//           fontSize: FontSizing.large,
//           fontWeight: FontWeight.w600,
//           fontStyle: FontStyle.normal,
//           letterSpacing: 0.3),
//       headline3: TextStyle(
//           color: ColorBlock.black,
//           fontSize: FontSizing.xLarge,
//           fontWeight: FontWeight.w600,
//           letterSpacing: 0.2),
//       headline2: TextStyle(
//           color: ColorBlock.black,
//           fontSize: FontSizing.xxLarge,
//           fontWeight: FontWeight.bold,
//           fontStyle: FontStyle.normal,
//           letterSpacing: 0.2),
//       headline1: TextStyle(
//           color: ColorBlock.black,
//           fontSize: FontSizing.huge,
//           fontWeight: FontWeight.bold,
//           fontStyle: FontStyle.normal,
//           letterSpacing: 0.2),
//       bodyText1: TextStyle(
//         color: ColorBlock.black,
//         fontSize: FontSizing.medium,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//         letterSpacing: 0.3,
//       ),

//       bodyText2: TextStyle(
//         color: ColorBlock.black,
//         fontSize: FontSizing.small,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//         letterSpacing: 0.3,
//       ),

//       subtitle1: TextStyle(
//         color: Colors.black,
//         fontSize: 14,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//       ),
//       subtitle2: TextStyle(
//         color: Color(0xff76B261),
//         fontStyle: FontStyle.normal,
//       ),
//       button: TextStyle(
//         color: Colors.white,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         fontStyle: FontStyle.normal,
//       ),
//       caption: TextStyle(
//         color: Color(0x8a000000),
//         fontSize: null,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//       ),

//       overline: TextStyle(
//         color: Color(0xff000000),
//         fontSize: null,
//         fontWeight: FontWeight.w400,
//         fontStyle: FontStyle.normal,
//       ),
//     ),

//     appBarTheme: Theme.of(context).appBarTheme.copyWith(
//           color: ColorBlock.white,
//           actionsIconTheme: const IconThemeData(color: ColorBlock.black),
//           centerTitle: true,
//           elevation: 5,
//           iconTheme: const IconThemeData(
//             color: Colors.black,

//             //change your color here
//           ),
//           titleTextStyle: GoogleFonts.getFont(Strings.fontFamily,
//               color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
//         ),

//     inputDecorationTheme: const InputDecorationTheme(
//       hintStyle: TextStyle(
//           fontSize: FontSizing.medium,
//           color: ColorBlock.grey,
//           letterSpacing: 0.3),
//       errorStyle: TextStyle(fontSize: FontSizing.small, letterSpacing: 0.3),
//       enabledBorder: OutlineInputBorder(
//           borderRadius: borderRadiusLarge,
//           borderSide: BorderSide(color: ColorBlock.grey)),
//       border: OutlineInputBorder(
//           borderRadius: borderRadiusLarge,
//           borderSide: BorderSide(color: ColorBlock.grey)),
//       focusedBorder: OutlineInputBorder(
//           borderRadius: borderRadiusLarge,
//           borderSide: BorderSide(
//             color: ColorBlock.black,
//           )),
//       contentPadding: paddingMedium,
//     ),

//     iconTheme: const IconThemeData(
//       color: ColorBlock.black,
//       opacity: 1,
//       size: 24,
//     ),
//     primaryIconTheme: const IconThemeData(
//       color: ColorBlock.black,
//       opacity: 1,
//       size: 24,
//     ),

//   );
// }
ThemeData getTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: ColorBlock.darkBlue,
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
            fontSize: FontSizing.large,
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
