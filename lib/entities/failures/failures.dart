import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  List properties = const <dynamic>[];
}

class ServerFailure extends Failure {
  @override
  List<Object?> get props => properties;
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => properties;
}

class NoConnectionFailure extends Failure {
  @override
  List<Object?> get props => properties;
}
