import 'package:dio/dio.dart';
class DioHelper
{
  static late Dio dio;
  static int()
  {
    dio  = Dio(
        BaseOptions(
          baseUrl: 'http://api.alquran.cloud/v1/quran/quran-uthmani',
          receiveDataWhenStatusError: true,
        ),
    );
  }

  // get Data
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
})async
  {
    return await dio.get(url, queryParameters: query,);
  }
}