import 'package:bmindex_app/components/custom_card.dart';
import 'package:bmindex_app/components/item_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF262B4D);
const pinkColor = Color(0xFFEB1455);
const bottomBarHeight = 80.0;

class InputDataPage extends StatefulWidget {
  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    cardChild: ItemIconText(
                      icone: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    cor: activeColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cor: activeColor,
                    cardChild: ItemIconText(
                      icone: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              cor: activeColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    cor: activeColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cor: activeColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: pinkColor,
            height: bottomBarHeight,
          ),
        ],
      ),
    );
  }
}

