import 'package:meta/meta.dart';
import 'package:test_git_task/models/data.dart';
import 'package:test_git_task/services/git_service.dart';

class GitRepository {
  final GitService gitService;

  GitRepository({@required this.gitService});
  Future<Data> searchRepositories({@required String query}) async {
    final response = await gitService.searchRepositories(query: query);

    return Data.fromJson(response);
  }
}
