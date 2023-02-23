import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/response_model/response_model.dart';

class ResponseControl<T> {
  Future<ResponseModel<T>> checkData(Future<ResponseModel<T>> dataFunction) async {
    try {
      return await dataFunction;
    } catch (e) {
      if (e is DioError) {
        if (e.response != null && e.response?.statusMessage != null) {
          return ResponseModel(isSuccess: false, msgCode: e.response?.statusMessage);
        } else {
          debugPrint(e.toString());
          return ResponseModel(isSuccess: false, msgCode: '600');
        }
      } else {
        debugPrint(e.toString());
        return ResponseModel(isSuccess: false, msgCode: '600');
      }
    }
  }
}
