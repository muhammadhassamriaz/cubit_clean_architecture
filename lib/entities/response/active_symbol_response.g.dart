// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbol_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveSymbolModel _$ActiveSymbolModelFromJson(Map<String, dynamic> json) =>
    ActiveSymbolModel(
      json['allow_forward_starting'] as int,
      json['display_name'] as String,
      json['display_order'] as int,
      json['exchange_is_open'] as int,
      json['is_trading_suspended'] as int,
      json['market'] as String,
      json['market_display_name'] as String,
      json['pip'] as int,
      json['subgroup'] as String,
      json['subgroup_display_name'] as String,
      json['submarket'] as String,
      json['submarket_display_name'] as String,
      json['symbol'] as String,
      json['symbol_type'] as String,
    );

Map<String, dynamic> _$ActiveSymbolModelToJson(ActiveSymbolModel instance) =>
    <String, dynamic>{
      'allow_forward_starting': instance.allowForwardStarting,
      'display_name': instance.displayName,
      'display_order': instance.displayOrder,
      'exchange_is_open': instance.exchangeIsOpen,
      'is_trading_suspended': instance.isTradingSuspended,
      'market': instance.market,
      'market_display_name': instance.marketDisplayName,
      'pip': instance.pip,
      'subgroup': instance.subgroup,
      'subgroup_display_name': instance.subgroupDisplayName,
      'submarket': instance.submarket,
      'submarket_display_name': instance.submarketDisplayName,
      'symbol': instance.symbol,
      'symbol_type': instance.symbolType,
    };

ActiveSymbolResponse _$ActiveSymbolResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveSymbolResponse(
      (json['active_symbols'] as List<dynamic>)
          .map((e) => ActiveSymbolModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActiveSymbolResponseToJson(
        ActiveSymbolResponse instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbol,
    };
