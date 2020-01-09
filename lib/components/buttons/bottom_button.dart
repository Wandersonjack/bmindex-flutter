import 'package:bmindex_app/utils/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {

  BottomButton({@required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kPinkColor,
        height: kBottomBarHeight,
        padding: EdgeInsets.only(bottom: 16.0),
        child: Center(
          child: Text(buttonText, style: kButtonText,),
        ),
      ),
    );
  }
}