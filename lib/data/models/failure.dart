import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  final String? message;

  const Failure({this.message});

  @override
  List<Object?> get props => [message];
}

class UserRequestFailure extends Failure {
  const UserRequestFailure({super.message});
}

class UserIsNotVerifiedFailure extends Failure {
  const UserIsNotVerifiedFailure({super.message});
}

class RequestFailure extends Failure {
  const RequestFailure({super.message});
}

