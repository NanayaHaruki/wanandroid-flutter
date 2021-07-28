import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wanandroid/data/question_d_t_o.dart';
import 'package:wanandroid/ui/WebPage.dart';
import 'package:wanandroid/utils/net/RequestApi.dart';
import 'package:wanandroid/widgets/RefreshLoadMoreList.dart';
import 'package:html/parser.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionPageState();
  }
}

class QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("问答"),
      ),
      body: RefreshLoadMoreList(_fetchData, _createItemViewFunc),
    );
  }

  Future<FetchData> _fetchData(int page) async {
    page++; // 这个接口页码从1 开始
    var response = await RequestApi.getQuestion(page);
    FetchData ans;
    if (response.success) {
      if (page == 1) {
        ans = FetchData(LIST_DATA_TYPE_DEFAULT, response.data.data.datas);
      } else if (page == response.data.data.pageCount) {
        ans = FetchData(LIST_DATA_TYPE_LOAD_MORE_END, response.data.data.datas);
      } else {
        ans = FetchData(
            LIST_DATA_TYPE_LOAD_MORE_COMPLETED, response.data.data.datas);
      }
    } else {
      if (page == 1) {
        ans = FetchData(LIST_DATA_TYPE_DEFAULT_ERROR, []);
      } else {
        ans = FetchData(LIST_DATA_TYPE_LOAD_MORE_FAILED, []);
      }
    }
    return ans;
  }

  Widget _createItemViewFunc(CommonListData commonListData) {
    var data = commonListData as Datas;
    return InkWell(
      onTap: () {
        Navigator.maybeOf(context).push(MaterialPageRoute(
            builder: (ctx) => WebPage(data.title, data.link)));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [Text(data.author), Text(data.niceDate)],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Text(
              data.title,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              _clearHtmlTag(data.desc),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  "${data.superChapterName} ${data.chapterName}",
                  style: TextStyle(color: Colors.green),
                ),
                Spacer(),
                Icon(
                  Icons.thumb_up,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(data.zan.toString())
              ],
            )
          ],
        ),
      ),
    );
  }

  String _clearHtmlTag(String str) {
    return parse(str).documentElement.text;
  }
}
