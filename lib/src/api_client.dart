import 'package:dio/dio.dart';
import 'package:ga_retrofit/src/interceptors/error_interceptor.dart';

class ApiClient {
  static Dio buildDioClient({required String baseUrl, List<Interceptor>? interceptorList}) {
    final dio = Dio()..options = BaseOptions(baseUrl: baseUrl, contentType: 'application/json');
    dio.interceptors.add(ErrorInterceptor());
    if (interceptorList != null) {
      dio.interceptors.addAll(interceptorList);
    }
    return dio;
  }
}
