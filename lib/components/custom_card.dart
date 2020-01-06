import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {@required this.cor,
        this.cardChild});                                                       //named parameter of type color as @required
  final Color cor;                                                              //making it immutable
  final Widget cardChild;                                                       //when creating a child it's a property type widget

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,                                                         //don't forget to instantiate the param as value child: cardChild
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}