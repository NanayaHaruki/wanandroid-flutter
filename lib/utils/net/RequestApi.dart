import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:wanandroid/data/Result.dart';
import 'package:wanandroid/data/home/home_pag_d_t_o.dart';
import 'package:wanandroid/utils/net/DioHelper.dart';

var logger = Logger();

class RequestApi {
  static Future<Result<HomePageDTO>> getHomePageListData(int page) async {
    try {
      var response =
          await DioHelper.getInstance().get("article/list/$page/json");
      var homePageDTO = HomePageDTO.fromJson(response.data);
      if (homePageDTO.errorCode == 0) {
        return Result.success(homePageDTO);
      } else {
        return Result.error(homePageDTO.errorMsg);
      }
    } on DioError catch (e) {
      return Result.error(e.message);
    }
  }
}
