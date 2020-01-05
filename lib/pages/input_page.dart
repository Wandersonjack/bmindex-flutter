import 'package:flutter/material.dart';

class InputDataPage extends StatefulWidget {
  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:  CustomCard(
                    cor: Color(0xFF262B4D),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cor: Color(0xFF262B4D),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              cor: Color(0xFF262B4D),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    cor: Color(0xFF262B4D),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cor: Color(0xFF262B4D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('hello world'),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({@required this.cor}); //named parameter of type color

  final Color cor;                                                              //making it immutable

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
