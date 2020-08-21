import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String text;

  NextPage({Key key, this.text}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text('$text'),
    );
  }
}
