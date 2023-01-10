import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:deriv/domain/repositories/active_symbols_repositories.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../entities/exceptions/exceptions.dart';
import '../../entities/failures/failures.dart';
import '../../entities/request/active_symbol_request.dart';
import '../../entities/response/active_symbol_response.dart';
import '../data_source/connectivity/network_info.dart';

class ActiveSymbolImp implements ActiveSymbolRepository {
  final NetworkInfo networkInfo;
  final WebSocketChannel? activeSymbolChannel;

  ActiveSymbolImp(this.networkInfo, this.activeSymbolChannel);
  @override
  Stream<Either<Failure, ActiveSymbolResponse>> getActiveSymbols(
      ActiveSymbolRequest? request) async* {
    if (await networkInfo.isConnected) {
      try {
        final result = activeSymbolChannel!.stream;
        yield Right(ActiveSymbolResponse.fromJson(await result.first));
      } on ServerException {
        yield Left(ServerFailure());
      }
    } else {
      yield Left(NoConnectionFailure());
    }
    yield Left(ServerFailure());
  }
}
