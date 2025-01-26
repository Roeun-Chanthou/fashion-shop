import 'package:flutter/material.dart';

import '../bag/bag_page.dart';
import '../favorite/favorite.dart';
import '../home/home_page.dart';
import '../profile/profile.dart';
import '../shop/shop_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          ShopScreen(),
          BagScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue.shade500,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 26,
        unselectedFontSize: 24,
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
        ),
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(
            () {
              _currentIndex = value;
            },
          );
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? const Icon(
                    Icons.home,
                  )
                : const Icon(
                    Icons.home_outlined,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? const Icon(Icons.shopping_cart)
                : const Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? const Icon(
                    Icons.shopping_bag,
                  )
                : const Icon(
                    Icons.shopping_bag_outlined,
                  ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? const Icon(Icons.person_2)
                : const Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
