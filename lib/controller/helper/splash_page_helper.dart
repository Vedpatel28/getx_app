// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:get_storage/get_storage.dart';

class splashScreenHelper {

  splashScreenHelper._();
  static final splashScreenHelper splashscreenHelper = splashScreenHelper._();

  GetStorage storage = GetStorage();

  String _check = 'first';

  get checkFirstTime {
    return storage.read(_check) ?? true;
  }

  doneFirst() {
    storage.write(_check, false);
  }
}
