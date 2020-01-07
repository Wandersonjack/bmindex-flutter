import 'package:bmindex_app/components/custom_card.dart';
import 'package:bmindex_app/components/item_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF1d1E33);
const inactiveColor = Color(0xFF111328);
const pinkColor = Color(0xFFEB1455);
const bottomBarHeight = 80.0;

//Enumeration
enum Gender {
  male,
  female
}

class InputDataPage extends StatefulWidget {
  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  Gender selectedGender;                                                        //property of type @Gender

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
                  child: GestureDetector(
                    //wrapping the widget with a gesture detector use onTap and setState to change the color
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;                           //instantiating the gender based on the widget
                      });
                    },
                    child: CustomCard(
                      cor: selectedGender == Gender.male ? activeColor: inactiveColor,//  ternary operator
                      cardChild: ItemIconText(
                        icone: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: CustomCard(
                      cor: selectedGender == Gender.female ? activeColor : inactiveColor,
                      cardChild: ItemIconText(
                        icone: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
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
