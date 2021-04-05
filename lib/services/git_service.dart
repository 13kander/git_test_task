import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

class GitService {
  Future<Map<String, dynamic>> searchRepositories({
    @required String query,
  }) async {
    final response = await Dio().get(
        'https://api.github.com/search/repositories',
        queryParameters: {'q': query, 'per_page': 100, 'page': 1});
    if (response.statusCode == 200) {
      return response.data as Map<String, dynamic>;
    } else {
      throw 'Ошибка ${response.statusCode}';
    }
  }
}
