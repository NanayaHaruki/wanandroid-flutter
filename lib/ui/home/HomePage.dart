import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/home/home_pag_d_t_o.dart';
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';
import 'package:wanandroid/widgets/RefreshLoadMoreList.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  Widget _listItemWidget(CommonListData commonListData) {
    var data = commonListData as Datas;
    return InkWell(
      onTap: () {
        // MyRouterDelegate.push(MyRoutePath.web(data.link));
        // MyRouterDelegate.of(context)
        //     .push(MyRoutePath.web({"title": data.title, "url": data.link}));
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WebPage(data.title, data.link)));
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(_autherName(data)),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "分类：${data.superChapterName}/${data.chapterName}",
                        maxLines: 1,
                      ),
                    )),
                    Text("时间：${data.niceDate}")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _autherName(Datas data) {
    if (data.author.isNotEmpty) {
      return "作者：${data.author}";
    }
    if (data.shareUser.isNotEmpty) {
      return "分享人：${data.shareUser}";
    }
    return "";
  }

  Future<FetchData> fetchRemoteData(int page) async {
    var res = await RequestApi.getHomePageListData(page);
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页"),),
      body: RefreshLoadMoreList((page)=> fetchRemoteData(page),_listItemWidget),

    );
  }
}
