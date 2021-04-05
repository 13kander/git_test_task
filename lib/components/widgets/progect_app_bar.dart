import 'package:flutter/material.dart';
import 'package:test_git_task/components/constant/colors.dart';
import 'package:test_git_task/components/constant/text_styles.dart';

class ProjectAppBar extends StatelessWidget {
  const ProjectAppBar({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: ProjectColor.background,
          border: Border(bottom: BorderSide(color: ProjectColor.border))),
      child: Center(
          child: Text(
        title,
        style: ProjectTextStyles.appBarTitle,
      )),
    );
  }
}
