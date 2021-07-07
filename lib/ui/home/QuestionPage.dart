import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/widgets/RefreshLoadMoreList.dart';

class QuestionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return QuestionPageState();
  }

}

class QuestionPageState extends State<QuestionPage>{
  @override
  Widget build(BuildContext context) {
    return RefreshLoadMoreList(_fetchData, _createItemViewFunc);
  }

  Future<FetchData> _fetchData(int page) async {


  }

  Widget _createItemViewFunc(){
    return
  }

}