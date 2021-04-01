import 'package:flutter/material.dart';
import 'package:test_git_task/components/constant/colors.dart';
import 'package:test_git_task/components/widgets/progect_app_bar.dart';
import 'package:test_git_task/components/widgets/search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key, @required this.textEditingController})
      : super(key: key);
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: ProjectAppBar(
              title: 'ПОИСК',
            )),
        backgroundColor: ProjectColor.background,
        body: SearchField(textEditingController: textEditingController));
  }
}
