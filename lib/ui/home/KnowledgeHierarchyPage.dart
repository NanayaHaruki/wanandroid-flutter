import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/home/knowledge_tag_d_t_o.dart';
import 'package:wanandroid/ui/knowledge/hierarchy/KnowledgeTagListPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';

class KnowledgeHierarchyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KnowledgeHierarchyPageState();
  }
}

class KnowledgeHierarchyPageState extends State<KnowledgeHierarchyPage> {
  Future _fetchCategoryTagListFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _fetchCategoryTagListFuture,
        builder: (context, snapchat) {
          if (snapchat.connectionState == ConnectionState.done) {
            if (snapchat.hasError) {
              return _errorWidget();
            } else {
              return _listWidget();
            }
          } else {
            return _loadingWidget();
          }
        });
  }

  _loadingWidget() {
    return Padding(
      padding: EdgeInsets.all(40),
      child: CircularProgressIndicator(),
    );
  }

  @override
  void initState() {
    _fetchCategoryTagListFuture = _fetchData();
    super.initState();
  }

  var _datas = <Data>[];

  Future _fetchData() async {
    var res = await RequestApi.getKnwoledgeTagList();
    if (res.success) {
      _datas.addAll(res.data.data);
    }
    return res;
  }

  _listWidget() {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _datas[index].name,
              style: TextStyle(fontSize: 24),
            ),
            Wrap(
              children: _datas[index]
                  .children
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
    });
  }

  _onTagClicked(Children tag) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => KnowledgeTagListPage(tag)));
  }

  _errorWidget() {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Text("加載失敗"),
    );
  }
}
