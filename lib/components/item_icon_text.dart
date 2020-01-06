import 'package:flutter/material.dart';
//in the cases you need to define alternative value to text style for example, use const to make it immutable at the time of build and don't forget to instantiate it as a value
const labelTextStyle =   TextStyle(
  color: Colors.white,
  fontSize: 18.0,
);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
