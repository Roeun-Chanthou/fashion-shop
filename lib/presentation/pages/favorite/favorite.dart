import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';

class FavoriteScreen extends StatelessWidget {
  final NavigatorController navigatorController = Get.find();

  FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Screen',
        ),
      ),
      body: const Center(),
    );
  }
}
