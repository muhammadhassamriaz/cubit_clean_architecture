// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:configuration/environment/build_config.dart' as _i4;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:socket_io_client/socket_io_client.dart' as _i9;

import '../../../di/module/network_module.dart' as _i11;
import '../environment/build_config_beta.dart' as _i5;
import '../environment/build_config_prod.dart' as _i7;
import '../environment/build_config_qc.dart' as _i6;
import '../network/core_socket.dart' as _i10;
import 'module/socket_module.dart' as _i13;

const String _beta = 'beta';
const String _qc = 'qc';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  final socketModule = _$SocketModule();
  gh.factory<_i4.BuildConfig>(
    () => _i5.BuildConfigBeta(),
    registerFor: {_beta},
  );
  gh.factory<_i4.BuildConfig>(
    () => _i6.BuildConfigQc(),
    registerFor: {_qc},
  );
  gh.factory<_i4.BuildConfig>(
    () => _i7.BuildConfigProd(),
    registerFor: {_prod},
  );
  gh.factory<_i8.Dio>(() => networkModule.dio);
  gh.singleton<_i9.Socket>(socketModule.socketIO);
  gh.singleton<_i10.CoreSocket>(_i10.CoreSocket(socketIO: get<_i9.Socket>()));
  return get;
}

class _$NetworkModule extends _i11.NetworkModule {}

class _$SocketModule extends _i13.SocketModule {}
