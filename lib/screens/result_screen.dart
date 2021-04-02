import 'package:flutter/material.dart';
import 'package:test_git_task/components/constant/colors.dart';
import 'package:test_git_task/components/constant/text_styles.dart';
import 'package:test_git_task/components/widgets/progect_app_bar.dart';
import 'package:test_git_task/components/widgets/repository_card.dart';
import 'package:test_git_task/models/data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key key,
      @required this.controller,
      @required this.data,
      @required this.query})
      : super(key: key);
  final ScrollController controller;
  final Data data;
  final String query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: ProjectAppBar(
            title: 'РЕЗУЛЬТАТ ПОИСКА',
          )),
      backgroundColor: ProjectColor.background,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 19, bottom: 8),
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'ПО ЗАПРОСУ: ',
                        style: ProjectTextStyles.greySubtitle),
                    TextSpan(
                        text: '\"$query\"'.toUpperCase(),
                        style: ProjectTextStyles.blueSubtitle)
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Center(
                child: Text(
                  'НАЙДЕНО: ${data.totalCount}',
                  style: ProjectTextStyles.greySubtitle,
                ),
              ),
            ),
            ...data.items
                .map((repository) => RepositoryCard(repository: repository))
          ],
        ),
      ),
    );
  }
}
