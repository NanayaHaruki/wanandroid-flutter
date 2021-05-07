import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:wanandroid/data/Result.dart';
import 'dart:developer';

class MePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MePageState();
  }

}

class MePageState extends State<MePage> {


  void click() {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: click, child: Text("click 我的"))
      ],
    );
  }

}