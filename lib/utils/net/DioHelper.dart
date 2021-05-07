
import 'package:dio/dio.dart';
class DioHelper {
  static Dio _dio;

  static Dio getInstance(){
    if(_dio == null){
      _dio = Dio();
      _dio.options = BaseOptions(
          baseUrl: "https://www.wanandroid.com/",
          connectTimeout: 10000,
          sendTimeout: 10000,
          receiveTimeout: 10000);
      _dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));
    }
    return _dio;
  }
}
