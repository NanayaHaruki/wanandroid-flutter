import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/home/knowledge_tag_d_t_o.dart';
import 'package:wanandroid/data/knowledge/hierarchy/navi_d_t_o.dart' as navi;
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/ui/home/KnowledgeHierarchyPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';
import 'package:wanandroid/widgets/RefreshLoadMoreList.dart';

import 'KnowledgeTagListPage.dart';

class HierarchyNaviListPage extends StatefulWidget {
  final String type;

  HierarchyNaviListPage(this.type,{Key key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HierarchyNaviListState(type);
  }
}

class HierarchyNaviListState extends State<HierarchyNaviListPage> with AutomaticKeepAliveClientMixin {
  final String type;

  HierarchyNaviListState(this.type);

  @override
  Widget build(BuildContext context) {
    return RefreshLoadMoreList(_fetchData, _tagItem);
  }

  Future<FetchData> _fetchData(int page) async {
    switch (type) {
      case NAVI:
        var res = await RequestApi.getNavi();
        if (res.success) {
          return FetchData(LIST_DATA_TYPE_LOAD_MORE_END, res.data.data);
        } else {
          return FetchData(LIST_DATA_TYPE_DEFAULT_ERROR, []);
        }
        break;
      case HIERARCHY:
        var res = await RequestApi.getKnowledgeTagList();
        if (res.success) {
          return FetchData(LIST_DATA_TYPE_DEFAULT, res.data.data);
        } else {
          return FetchData(LIST_DATA_TYPE_DEFAULT_ERROR, []);
        }
        break;
    }
  }

  Widget _tagItem(CommonListData commonListData) {
    Widget res;
    switch (type) {
      case NAVI:
        var data = commonListData as navi.Data;
        return Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style: TextStyle(fontSize: 24),
              ),
              Wrap(
                children: data.articles
                    .map((e) => Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: RawChip(
                            label: Text(e.title),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      WebPage(e.title, e.link)));
                            },
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        );
        break;
      case HIERARCHY:
        var data = commonListData as Data;
        return Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style: TextStyle(fontSize: 24),
              ),
              Wrap(
                children: data.children
                    .map((e) => Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: RawChip(
                            label: Text(e.name),
                            onPressed: () {
                              _onTagClicked(e);
                            },
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        );
        break;
    }
  }

  _onTagClicked(Children tag) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => KnowledgeTagListPage(tag)));
  }

  @override
  bool get wantKeepAlive => true;
}
