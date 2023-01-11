import 'package:deriv/presentation/home/ui/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:configuration/route/xmd_router.dart';
import 'package:deriv/configuration/lib/di/di.dart';
import 'package:deriv/configuration/lib/route/route_define.dart';
import '../../../manifest.dart';
import '../cubit/active_symbol_cubit.dart';

class HomeRoute extends RouteDefine {
  @override
  List<Path> initRoute(Map? arguments) => [
        Path(
          route: HomeRoute,
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<ActiveSymbolCubit>(
                create: (_) => getIt<ActiveSymbolCubit>(),
              ),
            ],
            child: const Home(),
          ),
        ),
      ];

  static pushAndRemoveAll() {
    XMDRouter.pushNamedAndRemoveUntil(routerIds[HomeRoute]!);
  }

  static popAndRemoveAll() {
    XMDRouter.popNamedAndRemoveUntil(routerIds[HomeRoute]!);
  }
}
