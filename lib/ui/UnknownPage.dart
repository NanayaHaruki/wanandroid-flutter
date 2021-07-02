import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("404"),),
    );
  }

}