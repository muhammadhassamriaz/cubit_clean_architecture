import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:deriv/entities/failures/failures.dart';

import '../../entities/request/active_symbol_request.dart';
import '../../entities/response/active_symbol_response.dart';

abstract class ActiveSymbolRepository {
  Stream<Either<Failure, ActiveSymbolResponse>> getActiveSymbols(
      ActiveSymbolRequest? request);
}
