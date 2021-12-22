import 'package:chopper_api_pomidor/swagger_generated_code/swagger.models.swagger.dart';
import '../../../core/data/api/api_client.dart';

class ApiDataSours {
  final ApiClient apiClient;

  ApiDataSours(this.apiClient);

  Future<User?> getUser() async {
    final res = await apiClient.api.authGet();
    return res.body;
  }
}
