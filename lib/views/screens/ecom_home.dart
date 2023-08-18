import 'package:flutter/material.dart';

class Ecom_Home extends StatelessWidget {
  const Ecom_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E Com Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => const Card(),
          ),
        ),
      ),
    );
  }
}
