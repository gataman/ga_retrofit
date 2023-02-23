import 'model/completable/completable.dart';
import 'model/response_model/response_model.dart';

abstract class INetworkMethods<T> {
  Future<ResponseModel<List<T>>> fetchAll({Map<String, dynamic> filter = const <String, dynamic>{}});

  Future<ResponseModel<T>> fetch({required String id});

  Future<ResponseModel<Completable>> insert({required T object});

  Future<ResponseModel<Completable?>> update({required T object});

  Future<ResponseModel<Completable?>> delete({required T object});

  Future<ResponseModel<List<T>>> insertAll({required List<T> objectList});

  Future<ResponseModel<Completable?>> updateAll({required List<T> objectList});

  Future<ResponseModel<Completable?>> deleteAll({required List<T> objectList});
}
