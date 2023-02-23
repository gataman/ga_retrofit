import '../model/completable/completable.dart';
import '../model/response_model/response_model.dart';
import '../network_methods.dart';
import 'base_service.dart';

abstract class BaseRepository<T> implements INetworkMethods<T> {
  final BaseService<T> service;

  BaseRepository(this.service);

  @override
  Future<ResponseModel<List<T>>> fetchAll({Map<String, dynamic> filter = const <String, dynamic>{}}) =>
      service.fetchAll(filter: filter);

  @override
  Future<ResponseModel<T>> fetch({required String id}) => service.fetch(id: id);

  @override
  Future<ResponseModel<Completable>> insert({required T object}) => service.insert(object: object);

  @override
  Future<ResponseModel<Completable?>> update({required T object}) => service.update(object: object);

  @override
  Future<ResponseModel<Completable?>> delete({required T object}) => service.delete(object: object);

  @override
  Future<ResponseModel<List<T>>> insertAll({required List<T> objectList}) => service.insertAll(objectList: objectList);

  @override
  Future<ResponseModel<Completable?>> updateAll({required List<T> objectList}) =>
      service.updateAll(objectList: objectList);

  @override
  Future<ResponseModel<Completable?>> deleteAll({required List<T> objectList}) =>
      service.deleteAll(objectList: objectList);
}
