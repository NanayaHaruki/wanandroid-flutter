import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NavigationPageState();
  }

}

class NavigationPageState extends State<NavigationPage>{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(40),child: Align(
      alignment: Alignment.topCenter,
      child: CircularProgressIndicator(),),);
  }

}