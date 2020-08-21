import 'package:flutter/material.dart';
import 'package:habitmanager/nextPage.dart';


class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("Home画面"),
        FlatButton(
          child: Text("ボタン", style: TextStyle(fontSize: 16.0)),
          color: Colors.red,
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context){
              return NextPage(text: 'AAAA');
            }));
          },
        )
      ]
    );// This trailing comma makes auto-formatting nicer for build methods.
  }
}

