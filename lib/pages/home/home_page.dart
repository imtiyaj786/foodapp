import 'package:flutter/material.dart';
import 'package:foodapp/pages/account/account_page.dart';
import 'package:foodapp/pages/auth/sign_up_page.dart';
import 'package:foodapp/pages/cart/cart_history.dart';
import 'package:foodapp/pages/home/main_food_page.dart';
import 'package:foodapp/utils/colors.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    MainFoodPage(),
    // Container(
    //   child: Center(
    //     child: Text("Hello 1"),
    //   ),
    // ),
    SignUpPage(),
    CartHistory(),
    AccountPage(),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.systemPurple,
        unselectedItemColor: AppColors.mainColor,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: "Archive",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Me",
          ),
        ],
      ),
    );
  }
}
