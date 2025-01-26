import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';

class ShopScreen extends StatelessWidget {
  final NavigatorController navigatorController = Get.find();

  ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop Screen',
        ),
      ),
      body: const Center(),
    );
  }
}
