import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard(
      {@required this.cor,
        this.cardChild,
        this.onPress,
      });                                                       //named parameter of type color as @required
  final Color cor;                                                              //making it immutable
  final Widget cardChild;                                                       //when creating a child it's a property type widget
  final Function onPress;//instance and add this function into the params

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,                                                           //wrapping with gesture detector and using the function
      child: Container(
        child: cardChild,                                                       //don't forget to instantiate the param as value child: cardChild
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}