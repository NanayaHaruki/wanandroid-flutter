import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/route/MyRoutePath.dart';
import 'package:wanandroid/ui/UnknownPage.dart';
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/ui/home/HomePage.dart';
import 'package:wanandroid/ui/home/main.dart';

class MyRouterDelegate extends RouterDelegate<MyRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  static MyRouterDelegate of(BuildContext ctx) {
    return Router
        .of(ctx)
        .routerDelegate as MyRouterDelegate;
  }

  var _stack = <MyRoutePath>[MyRoutePath.home()];

  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  MyRoutePath get currentConfiguration =>
      _stack.isNotEmpty ? _stack.last : null;

  void push(MyRoutePath path) {
    _stack.add(path);
    notifyListeners();
  }

  void pop() {
    if (_stack.isNotEmpty) {
      _stack.removeLast();
      notifyListeners();
    }
  }


  List<Page> transPage() {
    var res = <Page>[];
    for (var path in _stack) {
      var page;
      if (path.isUnknown)
        page = UnknownPage();
      else if (path.isWeb)
        page = WebPage("","");
      else if (path.isHome)
        page = MainPage();
      else
        page = UnknownPage();
      res.add(MaterialPage(child: page));
    }
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: transPage(),
      onPopPage: (route, result) {
        if (_stack.isNotEmpty) {
          if (_stack.last.modelName == route.settings.name) {
            _stack.remove(route.settings.name);
            notifyListeners();
          }
        }
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MyRoutePath path) async {
    _stack
      ..clear()
      ..add(path);
    notifyListeners();
  }
}
