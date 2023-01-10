import 'package:configuration/environment/build_config.dart';
import 'package:deriv/di/di.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../data/data_source/network/api_service.dart';

@module
abstract class NetworkModule {
  @injectable
  ApiService get apiService {
    return ApiService(
      di<Dio>(),
      baseUrl: di<BuildConfig>().apiUrl,
    );
  }
}
