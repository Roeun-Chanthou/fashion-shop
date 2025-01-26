import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/routes.dart';
import 'presentation/controllers/navigator_controller.dart';
import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/favorite/favorite.dart';
import 'presentation/pages/bag/bag_page.dart';
import 'presentation/pages/main_pages/main_page.dart';
import 'presentation/pages/profile/profile.dart';

void main() {
  Get.put(
    NavigatorController(),
    permanent: true,
  );

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.mainPage,
      getPages: [
        GetPage(
          name: Routes.mainPage,
          page: () => const MainPage(),
        ),
        GetPage(
          name: Routes.home,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: Routes.secondScreen,
          page: () => ProfileScreen(),
        ),
        GetPage(
          name: Routes.thirdScreen,
          page: () => BagScreen(),
        ),
        GetPage(
          name: Routes.fourthScreen,
          page: () => FavoriteScreen(),
        ),
      ],
    ),
  );
}
