import 'package:chopper/chopper.dart';
import 'package:chopper_api_pomidor/swagger_generated_code/client_mapping.dart';
import 'package:chopper_api_pomidor/swagger_generated_code/swagger.swagger.dart';

import 'converter/converter.dart';
import 'intercepters/auth.dart';
import 'intercepters/logger.dart';

class ApiClient {
  final String user;
  final String pass;
  final String baseUrl;

  ApiClient({required this.user, required this.pass, required this.baseUrl}) {
    _init();
  }

  late final Swagger api;

  void _init() {
    final client = ChopperClient(
      baseUrl: baseUrl,
      converter: CommonJsonSerializableConverter(),
      interceptors: [
        LoggerInterceptor(),
        AuthInterceptor(user, pass),
      ],
    );
    api = Swagger.create(client);
  }

  static final commonJsonDecoder = CommonJsonDecoder(generatedMapping);
}
