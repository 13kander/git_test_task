part of 'git_bloc.dart';

abstract class GitEvent extends Equatable {
  const GitEvent();

  @override
  List<Object> get props => [];
}

class SearchRepositiries extends GitEvent {
  final String query;

  SearchRepositiries({@required this.query});
  @override
  List<Object> get props => [query];
}
