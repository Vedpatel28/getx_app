// ignore_for_file: unrelated_type_equality_checks, camel_case_types

import 'package:get/get.dart';
import 'package:getx_app/model/setting_model.dart';

class settingController extends GetxController {

  settingmodel models = settingmodel();

  changeTheme() {
    models.theme.value = !models.theme.value;
  }
}
