import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

loadingWidget() {
  return Padding(
    padding: EdgeInsets.all(40),
    child: Align(
      alignment: Alignment.topCenter,
    ),
  );
}

errorWidget({String errMsg ="数据加载失败"}) {
  return Padding(
    padding: EdgeInsets.all(40),
    child: Text(errMsg),
  );
}

