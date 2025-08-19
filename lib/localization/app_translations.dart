import 'package:get/get.dart';
import 'lang_en.dart';
import 'lang_ko.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'ko_KR': koKR,
  };
}