import 'package:charactfolio_/exports/app_exports.dart';

Future<void> urlFinder(String url) async {
  final Uri uri = Uri.parse(url);
  if(!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('$url link not found');
  }
}