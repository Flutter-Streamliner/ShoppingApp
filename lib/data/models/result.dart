import 'package:equatable/equatable.dart';
import 'package:shop_app/data/models/failure.dart';

class Result<T> extends Equatable {
  final T? data;
  final Failure? failure;

  const Result._({this.data, this.failure});

  const Result.success({required T data}) : this._(data: data);

  const Result.failed({Failure? failure}) : this._(failure: failure);

  @override
  List<Object?> get props => [data, failure];
}