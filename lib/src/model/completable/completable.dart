// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'completable.g.dart';

@JsonSerializable()
class Completable {
  String? id;

  factory Completable.fromJson(Map<String, dynamic> json) => _$CompletableFromJson(json);

  Completable({this.id});

  Map<String, dynamic> toJson() => _$CompletableToJson(this);

  @override
  String toString() => 'Completable(id: $id)';
}
