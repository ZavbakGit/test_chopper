//Generated code

part of 'swagger.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$Swagger extends Swagger {
  _$Swagger([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Swagger;

  @override
  Future<Response<User>> authGet() {
    final $url = '/auth';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<User, User>($request);
  }

  @override
  Future<Response<User>> employeeGet({required String? code}) {
    final $url = '/employee';
    final $params = <String, dynamic>{'code': code};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<User, User>($request);
  }

  @override
  Future<Response<OrderItemArray>> ordersGet({required String? guid}) {
    final $url = '/orders';
    final $params = <String, dynamic>{'guid': guid};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<OrderItemArray, OrderItemArray>($request);
  }

  @override
  Future<Response<String>> collectedPost({required String? guid}) {
    final $url = '/collected';
    final $params = <String, dynamic>{'guid': guid};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<String, String>($request);
  }
}
