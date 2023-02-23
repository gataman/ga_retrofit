import 'package:json_annotation/json_annotation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
part 'response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseModel<T> {
  bool isSuccess;
  String? msgCode;
  T? data;

  ResponseModel({
    required this.isSuccess,
    this.msgCode,
    this.data,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ResponseModelToJson(this, toJsonT);

  @override
  String toString() => 'ResponseModel(isSuccess: $isSuccess, msgCode: $msgCode, data: $data)';
}
