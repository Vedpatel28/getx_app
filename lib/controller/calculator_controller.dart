// ignore_for_file: camel_case_types

import 'package:get/get.dart';
import 'package:getx_app/model/calculator_model.dart';

class calculatorController extends GetxController {
  CalculatorModel model = CalculatorModel();

  addition() {
    model.first.value + model.second.value;
  }

  subtraction() {
    model.first.value - model.second.value;
  }

  multiplication() {
    model.first.value * model.second.value;
  }

  division() {
    model.first.value / model.second.value;
  }
}
