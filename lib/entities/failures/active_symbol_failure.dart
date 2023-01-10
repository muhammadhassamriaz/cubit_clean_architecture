import '../../domain/utils/values.dart';

class ActiveSymbolFailure {
  ActiveSymbolFailure({
    required this.title,
    required this.message,
  });

  ActiveSymbolFailure.commonError([String? message])
      : title = Values.error,
        message = message ?? Values.somethingWentWrong;

  String title;
  String message;
}
