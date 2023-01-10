import 'package:json_annotation/json_annotation.dart';

part 'active_symbol_request.g.dart';

@JsonSerializable()
class ActiveSymbolRequest {
  @JsonKey(name: "active_symbols")
  final String activeSymbol;
  @JsonKey(name: "product_type")
  final String productType;
  @JsonKey(name: "req_id")
  final String reqID;

  ActiveSymbolRequest(this.activeSymbol, this.productType, this.reqID);

  factory ActiveSymbolRequest.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveSymbolRequestToJson(this);
}
