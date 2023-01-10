import 'package:json_annotation/json_annotation.dart';

part 'active_symbol_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ActiveSymbolModel {
  @JsonKey(name: "allow_forward_starting")
  final int allowForwardStarting;
  @JsonKey(name: "display_name")
  final String displayName;
  @JsonKey(name: "display_order")
  final int displayOrder;
  @JsonKey(name: "exchange_is_open")
  final int exchangeIsOpen;
  @JsonKey(name: "is_trading_suspended")
  final int isTradingSuspended;
  @JsonKey(name: "market")
  final String market;
  @JsonKey(name: "market_display_name")
  final String marketDisplayName;
  @JsonKey(name: "pip")
  final int pip;
  @JsonKey(name: "subgroup")
  final String subgroup;
  @JsonKey(name: "subgroup_display_name")
  final String subgroupDisplayName;
  @JsonKey(name: "submarket")
  final String submarket;
  @JsonKey(name: "submarket_display_name")
  final String submarketDisplayName;
  @JsonKey(name: "symbol")
  final String symbol;
  @JsonKey(name: "symbol_type")
  final String symbolType;

  ActiveSymbolModel(
    this.allowForwardStarting,
    this.displayName,
    this.displayOrder,
    this.exchangeIsOpen,
    this.isTradingSuspended,
    this.market,
    this.marketDisplayName,
    this.pip,
    this.subgroup,
    this.subgroupDisplayName,
    this.submarket,
    this.submarketDisplayName,
    this.symbol,
    this.symbolType,
  );

  factory ActiveSymbolModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolModelToJson(this);
}

@JsonSerializable()
class ActiveSymbolResponse {
  @JsonKey(name: "active_symbols")
  final List<ActiveSymbolModel> activeSymbol;
  ActiveSymbolResponse(this.activeSymbol);

  factory ActiveSymbolResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolResponseToJson(this);
}
