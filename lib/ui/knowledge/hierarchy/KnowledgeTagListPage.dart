import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/home/knowledge_tag_d_t_o.dart';
import 'package:wanandroid/ui/CommonWidgets.dart';
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';
import 'package:wanandroid/widgets/RefreshLoadMoreList.dart';
import 'package:wanandroid/data/knowledge/hierarchy/knowledge_tag_list_d_t_o.dart';

class KnowledgeTagListPage extends StatefulWidget {
  final Children _tag;

  KnowledgeTagListPage(this._tag);

  @override
  State<StatefulWidget> createState() {
    return KnowledgeTagListState(_tag);
  }
}

class KnowledgeTagListState extends State<KnowledgeTagListPage> {
  final Children _tag;

  KnowledgeTagListState(this._tag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tag.name),
      ),
      body: RefreshLoadMoreList((page) {
        return fetchRemoteData(page);
      }, _itemWidget),
    );
  }

  onItemClick(Datas data) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return WebPage(data.title, data.link);
    }));
  }

  Widget _itemWidget(CommonListData commonListData) {
    var data = commonListData as Datas;
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Card(
        child: InkWell(
          onTap: () {
            onItemClick(data);
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    authorWidget(data),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        "时间:${data.niceDate}",
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget authorWidget(Datas data) {
    Text res;
    if (data.author.isNotEmpty) {
      res = Text(
        "作者：${data.author}",
      );
    } else if (data.shareUser.isNotEmpty) {
      res = Text(
        "分享人：${data.shareUser}",
      );
    }
    return res;
  }

  Future<FetchData> fetchRemoteData(int page) async {
    var res = await RequestApi.getArticleListByKnowledgeTag(_tag.id, page);
    FetchData ans;
    if (res.success) {
      var dataType = 0;
      if (page == 0) {
        dataType = LIST_DATA_TYPE_DEFAULT;
      } else {
        if (res.data.data.curPage >= res.data.data.pageCount) {
          dataType = LIST_DATA_TYPE_LOAD_MORE_END;
        } else {
          dataType = LIST_DATA_TYPE_LOAD_MORE_COMPLETED;
        }
      }
      ans = FetchData(dataType, res.data.data.datas);
    } else {
      if (page == 0) {
        ans = FetchData(LIST_DATA_TYPE_DEFAULT_ERROR, []);
      } else {
        ans = FetchData(LIST_DATA_TYPE_LOAD_MORE_FAILED, []);
      }
    }
    return ans;
  }
}
