import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Error {
  Error({
    this.code,
    this.description,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  static const fromJsonFactory = _$ErrorFromJson;
  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({int? code, String? description}) {
    return Error(
        code: code ?? this.code, description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    this.guid,
    this.code,
    this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  static const fromJsonFactory = _$UserFromJson;
  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith({String? guid, String? code, String? name}) {
    return User(
        guid: guid ?? this.guid,
        code: code ?? this.code,
        name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class CatalogItem {
  CatalogItem({
    this.type,
    this.guid,
    this.code,
    this.name,
    this.markDeletion,
    this.parent,
  });

  factory CatalogItem.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemFromJson(json);

  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String? code;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'mark_deletion', includeIfNull: false)
  final bool? markDeletion;
  @JsonKey(name: 'parent', includeIfNull: false, defaultValue: '')
  final String? parent;
  static const fromJsonFactory = _$CatalogItemFromJson;
  static const toJsonFactory = _$CatalogItemToJson;
  Map<String, dynamic> toJson() => _$CatalogItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CatalogItem &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.markDeletion, markDeletion) ||
                const DeepCollectionEquality()
                    .equals(other.markDeletion, markDeletion)) &&
            (identical(other.parent, parent) ||
                const DeepCollectionEquality().equals(other.parent, parent)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(markDeletion) ^
      const DeepCollectionEquality().hash(parent) ^
      runtimeType.hashCode;
}

extension $CatalogItemExtension on CatalogItem {
  CatalogItem copyWith(
      {String? type,
      String? guid,
      String? code,
      String? name,
      bool? markDeletion,
      String? parent}) {
    return CatalogItem(
        type: type ?? this.type,
        guid: guid ?? this.guid,
        code: code ?? this.code,
        name: name ?? this.name,
        markDeletion: markDeletion ?? this.markDeletion,
        parent: parent ?? this.parent);
  }
}

@JsonSerializable(explicitToJson: true)
class CatalogItemArray {
  CatalogItemArray();

  factory CatalogItemArray.fromJson(Map<String, dynamic> json) =>
      _$CatalogItemArrayFromJson(json);

  static const fromJsonFactory = _$CatalogItemArrayFromJson;
  static const toJsonFactory = _$CatalogItemArrayToJson;
  Map<String, dynamic> toJson() => _$CatalogItemArrayToJson(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class OrderItem {
  OrderItem({
    this.guid,
    this.number,
    this.address,
    this.assemblyStartTime,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  @JsonKey(name: 'guid', includeIfNull: false, defaultValue: '')
  final String? guid;
  @JsonKey(name: 'number', includeIfNull: false, defaultValue: '')
  final String? number;
  @JsonKey(name: 'address', includeIfNull: false, defaultValue: '')
  final String? address;
  @JsonKey(name: 'assembly_start_time', includeIfNull: false, defaultValue: '')
  final String? assemblyStartTime;
  static const fromJsonFactory = _$OrderItemFromJson;
  static const toJsonFactory = _$OrderItemToJson;
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OrderItem &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.assemblyStartTime, assemblyStartTime) ||
                const DeepCollectionEquality()
                    .equals(other.assemblyStartTime, assemblyStartTime)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(assemblyStartTime) ^
      runtimeType.hashCode;
}

extension $OrderItemExtension on OrderItem {
  OrderItem copyWith(
      {String? guid,
      String? number,
      String? address,
      String? assemblyStartTime}) {
    return OrderItem(
        guid: guid ?? this.guid,
        number: number ?? this.number,
        address: address ?? this.address,
        assemblyStartTime: assemblyStartTime ?? this.assemblyStartTime);
  }
}

@JsonSerializable(explicitToJson: true)
class OrderItemArray {
  OrderItemArray();

  factory OrderItemArray.fromJson(Map<String, dynamic> json) =>
      _$OrderItemArrayFromJson(json);

  static const fromJsonFactory = _$OrderItemArrayFromJson;
  static const toJsonFactory = _$OrderItemArrayToJson;
  Map<String, dynamic> toJson() => _$OrderItemArrayToJson(this);

  @override
  int get hashCode => runtimeType.hashCode;
}
