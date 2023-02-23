import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      //case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 606);
      case DioErrorType.receiveTimeout:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 605);

      case DioErrorType.cancel:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 607);

      case DioErrorType.connectionTimeout:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 604);
      case DioErrorType.badCertificate:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 603);
      case DioErrorType.badResponse:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 602);
      case DioErrorType.connectionError:
        debugPrint('Error connectionError');
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 601);
      case DioErrorType.unknown:
        throw _BaseException(requestOptions: err.requestOptions, statusCode: 600);
    }
  }
}

class _BaseException extends DioError {
  _BaseException({required super.requestOptions, required this.statusCode});
  final int statusCode;

  @override
  Response? get response =>
      Response(statusCode: statusCode, statusMessage: statusCode.toString(), requestOptions: super.requestOptions);
}
