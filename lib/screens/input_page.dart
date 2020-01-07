import 'package:bmindex_app/components/custom_card.dart';
import 'package:bmindex_app/components/item_icon_text.dart';
import 'package:bmindex_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Enumeration
enum Gender { male, female }

class InputDataPage extends StatefulWidget {
  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  Gender selectedGender; //property of type @Gender
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cor: selectedGender == Gender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: ItemIconText(
                      icone: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cor: selectedGender == Gender.female
                        ? kActiveColor
                        : kInactiveColor,
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
              cor: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kBoldTextStyle,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kWhiteColor,
                      inactiveTrackColor: kGreyColor,
                      thumbColor: kPinkColor,
                      overlayColor: kPinkWithOpacity,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newHeightValue) {
                        setState(() {
                          height = newHeightValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    cor: kActiveColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cor: kActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kPinkColor,
            height: kBottomBarHeight,
          ),
        ],
      ),
    );
  }
}
