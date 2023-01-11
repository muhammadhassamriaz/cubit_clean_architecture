import 'package:flutter/material.dart';

import '../home_cubit.dart';

part 'active_symbol_state.dart';

class ActiveSymbolCubit extends Cubit<ActiveSymbolState> {
  final ActiveSymbolImp activeSymbolImp;
  ActiveSymbolCubit({
    required this.activeSymbolImp,
  }) : super(Initial());

  Stream<void> getActiveSymbol(ActiveSymbolRequest? param) async* {
    try {
      final res = activeSymbolImp.getActiveSymbols(param);
      emit(GetActiveSymbolSuccess(res));
    } catch (e) {
      emit(ActiveSymbolError());
    }
  }
}
