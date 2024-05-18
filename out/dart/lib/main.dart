import 'package:dio/dio.dart';
import 'package:swagger/api.dart';

void main() async {
  BaseOptions options = BaseOptions(baseUrl: 'https://catfact.ninja');
  final dio = Dio(options);
  final apiClient = ApiClient(dio);
  final api = FactsApi(apiClient);

  final facts = await api.getFacts();
  final randomFact = await api.getRandomFact();
}
