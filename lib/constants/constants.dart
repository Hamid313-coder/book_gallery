import 'package:flutter/material.dart';

/*
SPACING SYSTEM (px)
2  / 4 / 8 / 12 / 16 / 24 / 32 / 48 / 64 / 80 / 96 / 128
xt/ tiny/xxs/xs/ sm / md / lg / xlg /xxlg
FONT SIZE SYSTEM (px)
10 / 12 / 14 / 16 / 18 / 20 / 24 / 30 / 36 / 44 / 52 / 62 / 74 / 86 / 98
*/

abstract class Spacing {
  static const double xTiny = 2;
  static const double tiny = 4;
  static const double xxSmall = 8;
  static const double xSmall = 12;
  static const double small = 16;
  static const double medium = 24;
  static const double large = 32;
  static const double xLarge = 48;
  static const double xxLarge = 64;
  static const double huge = 80;
  static const double xHuge = 96;
  static const double xxHuge = 128;
}

abstract class FontSizing {
  static const double xSmall = 12;
  static const double small = 14;
  static const double medium = 16;
  static const double large = 18;
  static const double xLarge = 24;
  static const double xxLarge = 30;
  static const double huge = 36;
}

const double secondItemPaddingTiny = 2;

const double secondItemPaddingSmall = 10;

const double itemPadding = 8;

const double itemPaddingSmall = 12;

const double itemPaddingMedium = 16;

const double itemPaddingLarge = 24;

const double itemPaddingExtraLarge = 32;

// padding
const EdgeInsets paddingTiny = EdgeInsets.all(8);

const EdgeInsets paddingSmall = EdgeInsets.all(12);

const EdgeInsets paddingMedium = EdgeInsets.all(16);

const EdgeInsets paddingLarge = EdgeInsets.all(24);

const EdgeInsets paddingExtraLarge = EdgeInsets.all(32);

const EdgeInsets paddingDefault = EdgeInsets.all(20);

const EdgeInsets secondPaddingMedium = EdgeInsets.all(14);

const EdgeInsets secondPaddingSmall = EdgeInsets.all(10);

const EdgeInsets secondPaddingTiny = EdgeInsets.all(2);

// padding horizontal
const EdgeInsets paddingHorizontalTiny = EdgeInsets.symmetric(horizontal: 8);

const EdgeInsets paddingHorizontalSmall = EdgeInsets.symmetric(horizontal: 12);

const EdgeInsets paddingHorizontalMedium = EdgeInsets.symmetric(horizontal: 16);

const EdgeInsets paddingHorizontalLarge = EdgeInsets.symmetric(horizontal: 24);

const EdgeInsets paddingHorizontalExtraLarge =
    EdgeInsets.symmetric(horizontal: 32);

const EdgeInsets paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);

const EdgeInsets secondPaddingHorizontalTiny =
    EdgeInsets.symmetric(horizontal: 2);

const EdgeInsets secondPaddingHorizontalSmall =
    EdgeInsets.symmetric(horizontal: 10);

// padding vertical
const EdgeInsets paddingVerticalTiny = EdgeInsets.symmetric(vertical: 8);

const EdgeInsets paddingVerticalSmall = EdgeInsets.symmetric(vertical: 12);

const EdgeInsets paddingVerticalMedium = EdgeInsets.symmetric(vertical: 16);

const EdgeInsets paddingVerticalLarge = EdgeInsets.symmetric(vertical: 24);

const EdgeInsets paddingVerticalExtraLarge = EdgeInsets.symmetric(vertical: 32);

const EdgeInsets paddingVertical = EdgeInsets.symmetric(vertical: 20);

const EdgeInsets secondPaddingVerticalTiny = EdgeInsets.symmetric(vertical: 2);

const EdgeInsets secondPaddingVerticalSmall =
    EdgeInsets.symmetric(vertical: 10);

const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
const BorderRadius borderRadiusTiny = BorderRadius.all(Radius.circular(4));
const BorderRadius borderRadiusMedium = BorderRadius.all(Radius.circular(16));
const BorderRadius borderRadiusLarge = BorderRadius.all(Radius.circular(20));
const BorderRadius borderRadiusExtraLarge =
    BorderRadius.all(Radius.circular(24));

const BorderRadius borderRadiusBottomSheet = BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

const BorderRadius borderRadiusBottomSheetLarge = BorderRadius.only(
  topLeft: Radius.circular(30),
  topRight: Radius.circular(30),
);

const List<BoxShadow> initBoxShadow = [
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    offset: Offset(0, 2),
    blurRadius: 12,
    spreadRadius: 0,
  ),
];
const List<BoxShadow> itemBoxShadow = [
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    offset: Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
  ),
];

const List<BoxShadow> topBoxShadow = [
  BoxShadow(
    color: Color.fromRGBO(255, 255, 255, 0.05),
    offset: Offset(0, -2),
    blurRadius: 20,
    spreadRadius: 0,
  ),
];

const List<BoxShadow> secondBoxShadow = [
  BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.08),
    spreadRadius: 2,
    blurRadius: 8,
    offset: Offset(0, 3),
  ),
];

/// The gradient over the canvas black to transparent
const BoxDecoration overlayContainer = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
    colors: <Color>[
      Colors.black,
      Colors.transparent,
    ], // the gradient over the canvas
  ),
);
