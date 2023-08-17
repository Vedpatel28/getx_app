import 'package:get/get.dart';
import 'package:getx_app/model/counter_model.dart';

class counterController extends GetxController {

  counterModel model = counterModel();

  increment () {

    model.counter.value++;

  }

}
