import 'package:flutter/material.dart';
import 'package:test_git_task/components/constant/colors.dart';
import 'package:test_git_task/components/constant/global_vars.dart';
import 'package:test_git_task/components/constant/icons.dart';
import 'package:test_git_task/components/constant/text_styles.dart';
import 'package:test_git_task/models/repository.dart';

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({Key key, @required this.repository}) : super(key: key);
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 109,
        decoration: BoxDecoration(
            border: Border.all(color: ProjectColor.border),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 16, bottom: 4),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        repository.name,
                        style: ProjectTextStyles.repositoryTitle,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(repository.owner.avatarUrl),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            repository.owner.login,
                            style: ProjectTextStyles.userName,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 12),
                  child: Divider(
                    thickness: 1,
                    height: 0,
                    indent: 16,
                    endIndent: 16,
                    color: ProjectColor.border,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                        text: 'Обновлено: ',
                        style: ProjectTextStyles.repositoryGreySubtitle,
                      ),
                      TextSpan(
                          text:
                              '${repository.pushedAt.day} ${GlobalVars.months[repository.pushedAt.month]}',
                          style: ProjectTextStyles.repositoryBlackSubtitle),
                    ])),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, right: 16),
                child: IntrinsicWidth(
                  child: Container(
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ProjectColor.grey),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: ProjectIcons.star),
                          Text(
                            repository.stargazersCount.toString(),
                            style: ProjectTextStyles.stargazers,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
