import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';

class ProfileScreen extends StatelessWidget {
  final NavigatorController navigatorController = Get.find();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Screen',
        ),
      ),
      body: const Center(),
    );
  }
}
