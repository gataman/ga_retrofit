import 'package:retrofit/http.dart';

import '../model/completable/completable.dart';
import '../model/response_model/response_model.dart';
import '../network_methods.dart';

abstract class BaseService<T> implements INetworkMethods<T> {
  @override
  Future<ResponseModel<List<T>>> fetchAll({@Body() Map<String, dynamic> filter = const <String, dynamic>{}});

  @override
  Future<ResponseModel<T>> fetch({@Path("id") required String id});

  @override
  Future<ResponseModel<Completable>> insert({@Body() required T object});

  @override
  Future<ResponseModel<Completable?>> update({@Body() required T object});

  @override
  Future<ResponseModel<Completable?>> delete({@Body() required T object});

  @override
  Future<ResponseModel<List<T>>> insertAll({@Body() required List<T> objectList});

  @override
  Future<ResponseModel<Completable?>> updateAll({@Body() required List<T> objectList});

  @override
  Future<ResponseModel<Completable?>> deleteAll({@Body() required List<T> objectList});
}
