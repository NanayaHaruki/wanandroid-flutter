import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/ui/knowledge/hierarchy/HierarchyNaviListPage.dart';

class KnowledgeHierarchyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KnowledgeHierarchyPageState();
  }
}

const String NAVI = "导航";
const String HIERARCHY = "体系";

class KnowledgeHierarchyPageState extends State<KnowledgeHierarchyPage> with TickerProviderStateMixin{
  TabController _tabController;
  var tabs = [HIERARCHY, NAVI];

  @override
  void initState() {
    _tabController =
        TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TabBar(
          tabs: tabs.map((e) => Text(e)).toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: tabs
            .map((e) => HierarchyNaviListPage(
                  e,
                  key: PageStorageKey(e),
                ))
            .toList(),
        controller: _tabController,
      ),
    );
  }
}
