import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showResults = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(150.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Parameters', style: TextStyle(fontSize: 20.0))
                    ]),
                    Column(children: [
                      Text('normal', style: TextStyle(fontSize: 20.0))
                    ]),
                    //Column(children:[Text('', style: TextStyle(fontSize: 20.0))]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Sugar Level')]),
                    Column(children: [Text('<140')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Respiration')]),
                    Column(children: [Text('96% - 98%')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('Heart Rate')]),
                    Column(children: [Text('72')]),
                  ]),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _showResults = !_showResults;
                  });
                },
                child: Text(
                  'View Result',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            _showResults ? getTable() : Container(),
          ],
        ),
      ),
    );
  }

  Widget getTable() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(100.0),
        border: TableBorder.all(
            color: Colors.black, style: BorderStyle.solid, width: 2),
        children: [
          TableRow(children: [
            Column(children: [
              Text('Parameters', style: TextStyle(fontSize: 20.0))
            ]),
            Column(
                children: [Text('Values', style: TextStyle(fontSize: 20.0))]),
            Column(
                children: [Text('Results', style: TextStyle(fontSize: 20.0))]),
          ]),
          TableRow(children: [
            Column(children: [Text('Sugar Level')]),
            Column(children: [
              Text('198', style: TextStyle(backgroundColor: Colors.red))
            ]),
            Column(children: [Text('Diabetes')]),
          ]),
          TableRow(children: [
            Column(children: [Text('Respiration')]),
            Column(children: [Text('97%')]),
            Column(children: [Text('Normal')]),
          ]),
          TableRow(children: [
            Column(children: [Text('Heart Rate')]),
            Column(children: [
              Text('110', style: TextStyle(backgroundColor: Colors.red))
            ]),
            Column(children: [Text('BP,Asthma')]),
          ]),
        ],
      ),
    );
  }
}
