import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/Result.dart';
import 'package:wanandroid/ui/CommonWidgets.dart';

typedef FetchDataFunc = Future<FetchData> Function(int page);
typedef CreateItemViewFunc = Widget Function(CommonListData data);

class RefreshLoadMoreList extends StatefulWidget {
  final FetchDataFunc _fetchData;
  final CreateItemViewFunc _createItemViewFunc;

  RefreshLoadMoreList(this._fetchData, this._createItemViewFunc);

  @override
  State<StatefulWidget> createState() {
    return RefreshLoadMoreListState(_fetchData, _createItemViewFunc);
  }
}

const int LIST_DATA_TYPE_DEFAULT_ERROR = -1;
const int LIST_DATA_TYPE_DEFAULT = 0;
const int LIST_DATA_TYPE_LOAD_MORE_LOADING = 1;
const int LIST_DATA_TYPE_LOAD_MORE_COMPLETED = 2;
const int LIST_DATA_TYPE_LOAD_MORE_END = 3;
const int LIST_DATA_TYPE_LOAD_MORE_FAILED = 4;

class RefreshLoadMoreListState extends State<RefreshLoadMoreList> {
  final FetchDataFunc _fetchData;
  final CreateItemViewFunc _createItemViewFunc;

  RefreshLoadMoreListState(this._fetchData, this._createItemViewFunc);

  int _page;
  Future<FetchData> _future;

  @override
  void initState() {
    super.initState();
    _future = _updateList(0);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _future,
        builder: (context, snapchat) {
          if (snapchat.connectionState == ConnectionState.done) {
            if (snapchat.hasError) {
              return errorWidget();
            } else {
              return _listWidget();
            }
          } else {
            return loadingWidget();
          }
        });
  }

  _listWidget() {
    return RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (context, index) {
            var data = _datas[index];
            if (index == _datas.length - 1) {
              switch (data.dataType) {
                case LIST_DATA_TYPE_LOAD_MORE_END:
                  return _loadMoreEndWidget();
                case LIST_DATA_TYPE_LOAD_MORE_FAILED:
                  return _loadMoreFailedWidget();
                default:
                  _updateList(_page + 1);
                  return _loadMoreWidget();
              }
            } else {
              return _createItemViewFunc(data);
            }
          },
          itemCount: _datas.length,
        ),
        onRefresh: () {
          return _updateList(0);
        });
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
          _fetchData(_page + 1);
        },
        child: Text("加载失败，点击重新加载"),
      ),
    );
  }

  var _datas = <CommonListData>[];

  Future<FetchData> _updateList(int page) async {
    FetchData fetchData = await _fetchData(page);

    setState(() {
      switch (fetchData.dataType) {
        case LIST_DATA_TYPE_DEFAULT:
          _page = page;
          _datas.clear();
          _datas.addAll(fetchData.list);
          var loadMoreData = LoadMoreData(LIST_DATA_TYPE_LOAD_MORE_LOADING);
          _datas.add(loadMoreData);
          break;
        case LIST_DATA_TYPE_LOAD_MORE_COMPLETED:
          _page = page;
          _datas.insertAll(_datas.length - 1, fetchData.list);
          break;
        case LIST_DATA_TYPE_LOAD_MORE_END:
          _page = page;
          if(_datas.isEmpty){
            _datas.clear();
            _datas.addAll(fetchData.list);
            var loadEndWidget = LoadMoreData(LIST_DATA_TYPE_LOAD_MORE_END);
            _datas.add(loadEndWidget);
          }else {
            _datas.insertAll(_datas.length - 1, fetchData.list);
            _datas.last.dataType = LIST_DATA_TYPE_LOAD_MORE_END;
          }
          break;
        case LIST_DATA_TYPE_LOAD_MORE_FAILED:
          _datas.last.dataType = LIST_DATA_TYPE_LOAD_MORE_FAILED;
          break;
      }
    });
  }
}

/// 服务端返回数据后，包装成这个
class FetchData {
  final int dataType;
  final List<CommonListData> list;

  FetchData(this.dataType, this.list);
}

abstract class CommonListData {
  int dataType;
}

class LoadMoreData<T> implements CommonListData {
  LoadMoreData(this.dataType);

  @override
  int dataType;
}
