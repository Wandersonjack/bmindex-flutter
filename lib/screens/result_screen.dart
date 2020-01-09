import 'package:bmindex_app/components/buttons/bottom_button.dart';
import 'package:bmindex_app/components/custom_card.dart';
import 'package:bmindex_app/utils/constants.dart';
import 'package:flutter/material.dart';


class ResultsScreen extends StatelessWidget {
  ResultsScreen({@required this.bmiResults, @required this.interpretation, @required this.resultText });

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: CustomCard(
                cor: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTypeTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiResults,
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonText: 'Calculate again',
            ),
          ],
        ),
      ),
    );
  }
}
