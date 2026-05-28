// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_country_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCountryListModel _$AllCountryListModelFromJson(Map<String, dynamic> json) =>
    AllCountryListModel(
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      currencies: (json['currencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Currency.fromJson(e as Map<String, dynamic>)),
      ),
      cca2: json['cca2'] as String?,
      capital: (json['capital'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AllCountryListModelToJson(
  AllCountryListModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'currencies': instance.currencies,
  'cca2': instance.cca2,
  'capital': instance.capital,
};

Currency _$CurrencyFromJson(Map<String, dynamic> json) =>
    Currency(name: json['name'] as String?, symbol: json['symbol'] as String?);

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
  'name': instance.name,
  'symbol': instance.symbol,
};

Name _$NameFromJson(Map<String, dynamic> json) => Name(
  common: json['common'] as String?,
  official: json['official'] as String?,
  nativeName: (json['nativeName'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, NativeName.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
  'common': instance.common,
  'official': instance.official,
  'nativeName': instance.nativeName,
};

NativeName _$NativeNameFromJson(Map<String, dynamic> json) => NativeName(
  official: json['official'] as String?,
  common: json['common'] as String?,
);

Map<String, dynamic> _$NativeNameToJson(NativeName instance) =>
    <String, dynamic>{'official': instance.official, 'common': instance.common};
