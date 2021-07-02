import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/Result.dart';
import 'package:wanandroid/data/home/home_pag_d_t_o.dart';
import 'package:wanandroid/route/MyRouteDelegate.dart';
import 'package:wanandroid/route/MyRoutePath.dart';
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';

import '../CommonWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  bool isLoading = true;
  int currPage = 0;
  int maxPage = 0;
  final loadMore = "######";
  final loadMoreFailed = "加载失败，点击重试";
  final loadMoreEnd = "没有更多了~";
  var _datas = <Datas>[Datas(title: "######")];

  Future _firstFuture;

  _initFuture() async {
    var res = await RequestApi.getHomePageListData(0);
    if (res.success) {
      _datas.insertAll(_datas.length - 1, res.data.data.datas);
    }
    return res;
  }

  Future<Result<HomePageDTO>> _fetchData(int page) async {
    var result = await RequestApi.getHomePageListData(page);
    _updateList(result);
    return result;
  }

  _updateList(Result<HomePageDTO> result) {
    if (result.success) {
      setState(() {
        currPage = result.data.data.curPage;
        maxPage = result.data.data.pageCount;
        if (result.data.data.curPage == 0) {
          _datas.clear();
          _datas.addAll(result.data.data.datas);
          _datas.add(Datas(title: loadMore));
        } else {
          if (currPage == maxPage) {
            _datas.last.setTitle(loadMoreEnd);
          }
          _datas.insertAll(_datas.length - 1, result.data.data.datas);
        }
      });
    } else {
      if (result.data.data.curPage != 0) {
        setState(() {
          _datas.last.setTitle(loadMoreFailed);
        });
      }
    }
  }

  _loadMoreEndWidget() {
    return Center(
      child: Text("没有更多了"),
    );
  }

  _loadMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CircularProgressIndicator(),
      ),
    );
  }

  _loadMoreFailedWidget() {
    return Center(
      child: TextButton(
        onPressed: () {
          _fetchData(currPage + 1);
        },
        child: Text("加载失败，点击重新加载"),
      ),
    );
  }

  _listWidget() {
    return RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (context, index) {
            var data = _datas[index];
            if (index == _datas.length - 1) {
              if (data.title == loadMore) {
                _fetchData(currPage + 1);
                return _loadMoreWidget();
              } else if (data.title == loadMoreEnd) {
                return _loadMoreEndWidget();
              } else {
                return _loadMoreFailedWidget();
              }
            } else {
              return _listItemWidget(data);
            }
          },
          itemCount: _datas.length,
        ),
        onRefresh: () {
          return _fetchData(0);
        });
  }

  _listItemWidget(Datas data) {
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



  @override
  void initState() {
    super.initState();
    _firstFuture = _initFuture();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _firstFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return errorWidget(errMsg: snapshot.error.toString());
            } else {
              return _listWidget();
            }
          } else {
            return loadingWidget();
          }
        });
  }
}
