// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbol_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveSymbolRequest _$ActiveSymbolRequestFromJson(Map<String, dynamic> json) =>
    ActiveSymbolRequest(
      json['active_symbols'] as String,
      json['product_type'] as String,
      json['req_id'] as String,
    );

Map<String, dynamic> _$ActiveSymbolRequestToJson(
        ActiveSymbolRequest instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbol,
      'product_type': instance.productType,
      'req_id': instance.reqID,
    };
