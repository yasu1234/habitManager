import 'package:flutter/material.dart';

class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("記録画面"),
        FlatButton(
          child: Text("登録", style: TextStyle(fontSize: 24.0)),
          color: Colors.blue,
          onPressed: (){},
        )
      ]
    );
  }
}
