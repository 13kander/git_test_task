import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_git_task/bloc/git_bloc.dart';
import 'package:test_git_task/components/constant/text_styles.dart';
import 'package:test_git_task/screens/result_screen.dart';
import 'package:test_git_task/screens/search_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController;
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<GitBloc, GitState>(
        builder: (context, state) {
          if (state is GitInitial) {
            return SearchScreen(
              textEditingController: textEditingController,
            );
          }
          if (state is GitSuccess) {
            return ResultScreen(
              controller: scrollController,
              data: state.data,
              query: state.query,
            );
          }
          if (state is GitFailure) {
            return Center(
              child: Text(
                state.exception,
                style: ProjectTextStyles.appBarTitle,
              ),
            );
          }
          if (state is GitLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
