import 'package:bmindex_app/utils/constants.dart';
import 'package:flutter/material.dart';



class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),

      shape: CircleBorder(),
      fillColor: kInactiveColor,
    );
  }
}