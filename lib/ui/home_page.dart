import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  final _margin = 5.0;
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  double _res = 0.0;

  void addition() {
    String a = _aController.text;
    String b = _bController.text;

    setState(() {
      if (a.isNotEmpty && b.isNotEmpty) {
        _res = (double.parse(a) + double.parse(b));
      } else
        debugPrint('Error');
    });
  }

  void substraction() {
    String a = _aController.text;
    String b = _bController.text;

    setState(() {
      if (a.isNotEmpty && b.isNotEmpty) {
        _res = (double.parse(a) - double.parse(b));
      } else
        debugPrint('Error');
    });
  }

  void multiplication() {
    String a = _aController.text;
    String b = _bController.text;

    setState(() {
      if (a.isNotEmpty && b.isNotEmpty) {
        _res = (double.parse(a) * double.parse(b));
      } else
        debugPrint('Error');
    });
  }

  void division() {
    String a = _aController.text;
    String b = _bController.text;

    setState(() {
      if (a.isNotEmpty && b.isNotEmpty) {
        _res = (double.parse(a) / double.parse(b));
      } else
        debugPrint('Error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(_margin * 2),
      child: Column(children: <Widget>[
        Padding(padding: EdgeInsets.all(_margin * 10)),
        TextField(
            controller: _aController,
            decoration: InputDecoration(
                labelText: "Enter Value",
                hintText: 'for a',
                icon: Icon(Icons.ac_unit))),
        Padding(padding: EdgeInsets.all(_margin * 5)),
        TextField(
          controller: _bController,
          decoration: InputDecoration(
              labelText: "Enter Value",
              hintText: 'for b',
              icon: Icon(Icons.place)),
        ),
        Container(
          padding: EdgeInsets.all(_margin * 2),
          child: Row(
            children: <Widget>[
              FlatButton(
                onPressed: addition,
                child: Text('+'),
                color: Colors.blueGrey,
              ),
              FlatButton(
                onPressed: substraction,
                child: Text('-'),
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(_margin * 2),
          child: Row(
            children: <Widget>[
              FlatButton(
                onPressed: multiplication,
                child: Text('*'),
                color: Colors.blueGrey,
              ),
              FlatButton(
                onPressed: division,
                child: Text('/'),
                color: Colors.blueGrey,
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(_margin * 5)),
        Text("$_res")
      ]),
    );
  }
}
