import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../models/data.dart';
import '../repositories/git_repository.dart';

part 'git_event.dart';
part 'git_state.dart';

class GitBloc extends Bloc<GitEvent, GitState> {
  GitBloc({@required this.gitRepository}) : super(GitInitial());

  final GitRepository gitRepository;
  @override
  Stream<GitState> mapEventToState(
    GitEvent event,
  ) async* {
    if (event is SearchRepositiries) {
      yield* _searchRepositoriesToStae(query: event.query);
    }
  }

  Stream<GitState> _searchRepositoriesToStae({@required String query}) async* {
    final currentState = state;

    try {
      if (currentState is GitInitial) {
        yield GitLoading();
        final data = await gitRepository.searchRepositories(query: query);
        yield GitSuccess(data: data, query: query);
      }
      if (currentState is GitSuccess) {
        yield GitSuccess(data: currentState.data, query: currentState.query);
        final data = await gitRepository.searchRepositories(
          query: query,
        );
        yield GitSuccess(
            data: currentState.data
                .copyWith(items: currentState.data.items + data.items),
            query: currentState.query);
      }
    } catch (e) {
      yield GitFailure(exception: e.toString());
    }
  }
}
