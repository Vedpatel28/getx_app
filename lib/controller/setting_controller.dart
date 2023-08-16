// ignore_for_file: unrelated_type_equality_checks

import 'package:get/get.dart';

class settingProvider extends GetxController {
  RxBool theme = true.obs;

  changeTheme() {
    theme.value = !theme.value;
    print(theme.value);
  }
}
