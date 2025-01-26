import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';

class HomeScreen extends StatelessWidget {
  final NavigatorController navigatorController = Get.find();

  HomeScreen({super.key});

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: height * 0.6,
      flexibleSpace: Stack(
        children: [
          Image(
            image: const AssetImage("assets/logo/logomain.jpg"),
            fit: BoxFit.cover,
            width: width,
          ),
          Positioned(
            bottom: height * 0.12,
            left: 16,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Fashion",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "sale",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: height * 0.05,
            left: 16,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                minimumSize: Size(
                  height * 0.18,
                  45,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Check",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
