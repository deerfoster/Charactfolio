import 'package:charactfolio_/screens/developer_screen.dart';
import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class CharactfolioRoutes {
  static const String home = 'home';
  static const String aboutMe = 'about_me';
  static const String projects = 'projects';
  static const String developer = 'developer';

  static Map<String, Widget Function(BuildContext)> routes= {
    home: (BuildContext context) => const HomeScreen(),
    aboutMe: (BuildContext context) => const AboutMeScreen(),
    projects: (BuildContext context) => const ProjectScreen(),
    developer: (BuildContext context) => const DeveloperScreen(),
  };
}