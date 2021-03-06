import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  final String url;
  final String title;

  WebPage(this.title, this.url);

  @override
  State<StatefulWidget> createState() {
    return _WebPageState(title, url);
  }
}

class _WebPageState extends State<WebPage> {
  final String url;
  final String title;

  _WebPageState(this.title, this.url);

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  int progress = 0;

  _updateLoadingProgress(int progress) {
    setState(() {
      this.progress = progress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title),
    ),
    body: WebView(
      initialUrl: url,
      onProgress: _updateLoadingProgress,
      gestureNavigationEnabled: true,
    )
    );
  }
}
