import 'swagger.models.swagger.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;
export 'swagger.models.swagger.dart';

part 'swagger.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create([ChopperClient? client]) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        baseUrl: 'https://172.31.255.150/copy_erp/hs/by_openapi');
    return _$Swagger(newClient);
  }

  ///Получает пользователя
  @Get(path: '/auth')
  Future<chopper.Response<User>> authGet();

  ///Получает сотрудника
  ///@param code Код сотрудника
  @Get(path: '/employee')
  Future<chopper.Response<User>> employeeGet(
      {@Query('code') required String? code});

  ///Список заказов
  ///@param guid guid сотрудника
  @Get(path: '/orders')
  Future<chopper.Response<OrderItemArray>> ordersGet(
      {@Query('guid') required String? guid});

  ///Отметить сборку заказа
  ///@param guid guid заказа
  @Post(path: '/collected', optionalBody: true)
  Future<chopper.Response<String>> collectedPost(
      {@Query('guid') required String? guid});
}

final Map<Type, Object Function(Map<String, dynamic>)>
    SwaggerJsonDecoderMappings = {
  Error: Error.fromJsonFactory,
  User: User.fromJsonFactory,
  CatalogItem: CatalogItem.fromJsonFactory,
  CatalogItemArray: CatalogItemArray.fromJsonFactory,
  OrderItem: OrderItem.fromJsonFactory,
  OrderItemArray: OrderItemArray.fromJsonFactory,
};

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(SwaggerJsonDecoderMappings);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
