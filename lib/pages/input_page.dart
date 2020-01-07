import 'package:bmindex_app/components/custom_card.dart';
import 'package:bmindex_app/components/item_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF1d1E33);
const inactiveColor = Color(0xFF111328);
const pinkColor = Color(0xFFEB1455);
const bottomBarHeight = 80.0;

class InputDataPage extends StatefulWidget {
  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  //applying gesture detectors and state for the color change
  Color maleColor = inactiveColor;//creating initial instance for the colors as inactive
  Color femaleColor = inactiveColor;//use it inside of the cor of the widget

  //verifying if the tapped widget is male = 1 or female = 2
  void updateColor(int gender){
    //male card that was tapped
    if(gender == 1){
      //checking if the color is inactive and toggle it with active color
      if(maleColor == inactiveColor){
        maleColor = activeColor;
        femaleColor = inactiveColor;
      }else{
        maleColor = inactiveColor;
      }
    }else{//it's female
      //checking the color
      if(femaleColor == inactiveColor){
        femaleColor = activeColor;
        maleColor = inactiveColor;
      }else{
        femaleColor = inactiveColor;
      }
    }

  }
  
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
                  child: GestureDetector(                                       //wrapping the widget with a gesture detector use onTap and setState to change the color
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: CustomCard(
                      cor: maleColor,
                      cardChild: ItemIconText(
                        icone: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: CustomCard(
                      cor: femaleColor,
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
