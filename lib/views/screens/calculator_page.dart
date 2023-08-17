// ignore_for_file: unrelated_type_equality_checks, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_app/controller/calculator_controller.dart';

class calculator_page extends StatelessWidget {
  calculator_page({super.key});

  calculatorController controller = Get.put(calculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     SizedBox(
            //       width: 140,
            //       child: TextField(
            //         textAlign: TextAlign.center,
            //         keyboardType: TextInputType.number,
            //         onSubmitted: (value) {
            //           controller.model.first.value == value;
            //           print("===========================");
            //           print(value);
            //           print("===========================");
            //         },
            //         decoration: const InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(20),
            //             ),
            //           ),
            //           hintText: "First Value",
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 40,
            //     ),
            //     SizedBox(
            //       width: 140,
            //       child: TextField(
            //         textAlign: TextAlign.center,
            //         keyboardType: TextInputType.number,
            //         onSubmitted: (value) {
            //           controller.model.second.value == value;
            //           print("===========================");
            //           print(value);
            //           print("===========================");
            //         },
            //         decoration: const InputDecoration(
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.all(
            //               Radius.circular(20),
            //             ),
            //           ),
            //           hintText: "second Value",
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 300),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 360,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.model.task.length,
                    itemBuilder: (context, index) => Container(
                      width: 50,
                      margin: const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            color: Colors.black26,
                            offset: Offset(0.6, 0),
                          ),
                        ],
                        border: Border.all(width: 3, color: Colors.black12),
                      ),
                      child: Text(
                        "${controller.model.task[index]}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 350,
              width: 350,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () {

                    

                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Colors.black26,
                          offset: Offset(0.6, 0),
                        ),
                      ],
                      border: Border.all(width: 3, color: Colors.black12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "$index",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
