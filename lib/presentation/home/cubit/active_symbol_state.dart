part of 'active_symbol_cubit.dart';

@immutable
abstract class ActiveSymbolState extends Equatable {}

class Initial extends ActiveSymbolState {
  @override
  List<Object> get props => [];
}

class GetActiveSymbolSuccess extends ActiveSymbolState {
  final Stream<Either<Failure, ActiveSymbolResponse>> resTest;

  GetActiveSymbolSuccess(
    this.resTest,
  );
  @override
  List<Object> get props => [resTest];
}

class ActiveSymbolError extends ActiveSymbolState {
  @override
  List<Object> get props => [];
}
