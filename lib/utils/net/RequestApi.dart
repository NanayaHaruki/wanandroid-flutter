import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:wanandroid/data/Result.dart';
import 'package:wanandroid/data/home/home_pag_d_t_o.dart';
import 'package:wanandroid/data/home/knowledge_tag_d_t_o.dart';
import 'package:wanandroid/data/knowledge/hierarchy/knowledge_tag_list_d_t_o.dart';
import 'package:wanandroid/data/knowledge/hierarchy/navi_d_t_o.dart';
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
  static Future<Result<KnowledgeTagDTO>> getKnowledgeTagList() async {
    try {
      var response =
      await DioHelper.getInstance().get("tree/json");
      var tagDTO = KnowledgeTagDTO.fromJson(response.data);
      if (tagDTO.errorCode == 0) {
        return Result.success(tagDTO);
      } else {
        return Result.error(tagDTO.errorMsg);
      }
    } on DioError catch (e) {
      return Result.error(e.message);
    }
  }

  static Future<Result<KnowledgeTagListDTO>> getArticleListByKnowledgeTag(int tagId,int page) async {
    try {
      var response =
      await DioHelper.getInstance().get("article/list/$page/json?cid=$tagId");
      var dto = KnowledgeTagListDTO.fromJson(response.data);
      if (dto.errorCode == 0) {
        return Result.success(dto);
      } else {
        return Result.error(dto.errorMsg);
      }
    } on DioError catch (e) {
      return Result.error(e.message);
    }
  }

  static Future<Result<NaviDTO>> getNavi() async {
    try {
      var response =
      await DioHelper.getInstance().get("navi/json");
      var dto = NaviDTO.fromJson(response.data);
      if (dto.errorCode == 0) {
        return Result.success(dto);
      } else {
        return Result.error(dto.errorMsg);
      }
    } on DioError catch (e) {
      return Result.error(e.message);
    }
  }
}
