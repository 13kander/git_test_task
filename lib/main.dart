import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:test_git_task/pages/home.dart';
import 'package:test_git_task/repositories/git_repository.dart';
import 'package:test_git_task/services/git_service.dart';

import 'bloc/git_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterStatusbarManager.setHidden(true, animation: StatusBarAnimation.SLIDE)
      .whenComplete(() async =>
          FlutterStatusbarManager.setStyle(StatusBarStyle.DARK_CONTENT)
              .whenComplete(() => runApp(MyApp())));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) =>
            GitBloc(gitRepository: GitRepository(gitService: GitService())),
        child: Home(),
      ),
    );
  }
}
