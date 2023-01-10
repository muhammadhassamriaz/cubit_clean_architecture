import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/use_case/active_symbol_repo.dart';
import '../../entities/failures/failures.dart';
import '../../entities/request/active_symbol_request.dart';
import '../../entities/response/active_symbol_response.dart';

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
