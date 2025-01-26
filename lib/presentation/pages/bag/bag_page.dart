import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';

class BagScreen extends StatelessWidget {
  final NavigatorController navigatorController = Get.find();

  BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bag Screen'),
      ),
      body: const Center(),
    );
  }
}
