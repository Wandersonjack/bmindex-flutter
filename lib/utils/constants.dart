import 'package:flutter/material.dart';

//colors
const kActiveColor = Color(0xFF1d1E33);
const kInactiveColor = Color(0xFF111328);
const kPinkColor = Color(0xFF02DCDC);
const kPinkWithOpacity = Color(0x2902DCDC);
const kWhiteColor = Colors.white;
const kGreyColor = Color(0xFF8D8E98);
//dimensions
const kBottomBarHeight = 80.0;
//text styles
const kLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

const kBoldTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w800,
);
const kBoldTitleStyle = TextStyle(
  fontSize: 34.0,
  fontWeight: FontWeight.w800,
);

const kButtonText = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTypeTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 20.0,
  color: Colors.green,
);

const kResultTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 100.0,
);

const kBodyTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 24.0,
);

final kTopShadow = BoxShadow(
    color: Color(0xFF495073).withOpacity(.72),
    offset: Offset(-12, -12),
    blurRadius: 15.0);

final kBottomShadow = BoxShadow(
    color: Color(0xFF2E334E).withOpacity(1.0),
    offset: Offset(12, 12),
    blurRadius: 15.0);
final kEndShadow = BoxShadow(
  color: Color(0xFF535C88).withOpacity(0.2),
  offset: Offset(2.0, 2.0),
);

final kBorder = Border(
  top: BorderSide(
    width: 1.0,
    color: Color(0xFF5D658E).withOpacity(0.48),
  ),
  left: BorderSide(
    width: 1.0,
    color: Color(0xFF5D658E).withOpacity(0.48),
  ),
  right: BorderSide(
    width: 1.0,
    color: Color(0xFF5D658E).withOpacity(0.48),
  ),
  bottom: BorderSide(
    width: 1.0,
    color: Color(0xFF000000).withOpacity(0),
  ),
);


final BoxDecoration decoration = BoxDecoration(

  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF444A6D),
      Color(0xFF2D324D),
    ],
  ),
 borderRadius: BorderRadius.only(
    topLeft: Radius.circular(15.0),
    topRight: Radius.circular(15.0),
    bottomRight: Radius.circular(15.0),
    bottomLeft: Radius.circular(15.0),
  ),
  boxShadow: [kTopShadow, kBottomShadow, kEndShadow],
);
