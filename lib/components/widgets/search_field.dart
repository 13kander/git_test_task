import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_git_task/bloc/git_bloc.dart';
import 'package:test_git_task/components/constant/colors.dart';
import 'package:test_git_task/components/constant/text_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key, @required this.textEditingController})
      : super(key: key);
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 84, left: 16, right: 16),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 4, right: 4),
              child: InkWell(
                onTap: () => BlocProvider.of<GitBloc>(context)
                    .add(SearchRepositiries(query: textEditingController.text)),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: ProjectColor.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Text(
                      'НАЙТИ',
                      style: ProjectTextStyles.buttonTitle,
                    ),
                  ),
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: ProjectColor.border)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: ProjectColor.border)),
          ),
        ),
      ),
    );
  }
}
