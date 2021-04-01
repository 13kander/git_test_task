import 'package:flutter/material.dart';
import 'package:test_git_task/components/constant/colors.dart';

class ProjectTextStyles {
  ProjectTextStyles._();

  static const appBarTitle = TextStyle(
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: ProjectColor.black,
      letterSpacing: 0.5);
  static const greySubtitle = TextStyle(
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 10,
      color: ProjectColor.grey,
      letterSpacing: 0.5);
  static const blueSubtitle = TextStyle(
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 10,
      color: ProjectColor.blue,
      letterSpacing: 0.5);
  static const buttonTitle = TextStyle(
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: ProjectColor.white,
      letterSpacing: 0.5);
  static const repositoryTitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    color: ProjectColor.black,
  );
  static const repositoryGreySubtitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 10,
    color: ProjectColor.grey,
  );
  static const repositoryBlackSubtitle = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 10,
    color: ProjectColor.black,
  );
  static const userName = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 10,
    color: ProjectColor.black,
  );
  static const stargazers = TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: 10,
    color: ProjectColor.white,
  );
}
