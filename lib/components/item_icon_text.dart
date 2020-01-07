import 'package:bmindex_app/utils/constants.dart';
import 'package:flutter/material.dart';


class ItemIconText extends StatelessWidget {
  ItemIconText({this.icone, this.label});                                       /*applying the properties as params as not required and now you should use the named param inside of the object declared in the input page*/

  final IconData icone;                                                         //immutable properties
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icone,
          size: 80.0,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
