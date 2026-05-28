import 'package:json_annotation/json_annotation.dart';

part 'all_country_list.g.dart';

@JsonSerializable()
class AllCountryListModel {
  final Name? name;
  final Map<String, Currency>? currencies;
  final String? cca2;
  final List<String>? capital;

  AllCountryListModel({this.name, this.currencies, this.cca2, this.capital});
  factory AllCountryListModel.fromJson(Map<String, dynamic> json) =>
      _$AllCountryListModelFromJson(json);
}

@JsonSerializable()
class Currency {
  final String? name;
  final String? symbol;

  Currency({this.name, this.symbol});
  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@JsonSerializable()
class Name {
  final String? common;
  final String? official;
  final Map<String, NativeName>? nativeName;

  Name({this.common, this.official, this.nativeName});
  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@JsonSerializable()
class NativeName {
  final String? official;
  final String? common;

  NativeName({this.official, this.common});
  factory NativeName.fromJson(Map<String, dynamic> json) =>
      _$NativeNameFromJson(json);
}
