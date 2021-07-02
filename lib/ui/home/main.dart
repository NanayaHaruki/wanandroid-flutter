import 'package:flutter/material.dart';
import 'package:wanandroid/route/MyRouteDelegate.dart';
import 'package:wanandroid/route/RouteParser.dart';
import 'package:wanandroid/ui/home/HomePage.dart';
import 'package:wanandroid/ui/home/KnowledgeHierarchyPage.dart';
import 'package:wanandroid/ui/home/MePage.dart';
import 'package:wanandroid/ui/home/NavigationPage.dart';
import 'package:wanandroid/ui/home/ProjectPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouterParser(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  void switchPage(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wanandroid flutter"),
        ),
        body: Column(
          children: [
            Expanded(
                child: IndexedStack(
              index: _index,
              children: [
                HomePage(),
                KnowledgeHierarchyPage(),
                NavigationPage(),
                ProjectPage(),
                MePage()
              ],
            )),
            BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment), label: "体系"),
                BottomNavigationBarItem(icon: Icon(Icons.explore), label: "导航"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.view_compact), label: "项目"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
              ],
              currentIndex: _index,
              onTap: (index) => switchPage(index),
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
            )
          ],
        ));
  }
}
