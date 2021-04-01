part of 'git_bloc.dart';

abstract class GitState extends Equatable {
  const GitState();

  @override
  List<Object> get props => [];
}

class GitInitial extends GitState {
  @override
  List<Object> get props => [];
}

class GitLoading extends GitState {
  @override
  List<Object> get props => [];
}

class GitFailure extends GitState {
  final String exception;

  GitFailure({@required this.exception});
  @override
  List<Object> get props => [exception];
}

class GitSuccess extends GitState {
  final Data data;
  final String query;

  GitSuccess({@required this.data, @required this.query});

  @override
  List<Object> get props => [data, query];
}
