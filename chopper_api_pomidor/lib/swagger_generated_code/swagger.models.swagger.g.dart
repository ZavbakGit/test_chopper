// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as int?,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('description', instance.description);
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      guid: json['guid'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  return val;
}

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => CatalogItem(
      type: json['type'] as String? ?? '',
      guid: json['guid'] as String? ?? '',
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      markDeletion: json['mark_deletion'] as bool?,
      parent: json['parent'] as String? ?? '',
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('guid', instance.guid);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('mark_deletion', instance.markDeletion);
  writeNotNull('parent', instance.parent);
  return val;
}

CatalogItemArray _$CatalogItemArrayFromJson(Map<String, dynamic> json) =>
    CatalogItemArray();

Map<String, dynamic> _$CatalogItemArrayToJson(CatalogItemArray instance) =>
    <String, dynamic>{};

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      guid: json['guid'] as String? ?? '',
      number: json['number'] as String? ?? '',
      address: json['address'] as String? ?? '',
      assemblyStartTime: json['assembly_start_time'] as String? ?? '',
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('guid', instance.guid);
  writeNotNull('number', instance.number);
  writeNotNull('address', instance.address);
  writeNotNull('assembly_start_time', instance.assemblyStartTime);
  return val;
}

OrderItemArray _$OrderItemArrayFromJson(Map<String, dynamic> json) =>
    OrderItemArray();

Map<String, dynamic> _$OrderItemArrayToJson(OrderItemArray instance) =>
    <String, dynamic>{};
