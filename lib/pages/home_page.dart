import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/profile_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigato screen by bottom bar
  int _selectedIndex = 0;

  void navigateBotomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // lisf of page
  final List<Widget> _pageList = [
    const ShopPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomBarNav(
        onTabChange: (index) => navigateBotomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                    child: Image.asset(
                  'lib/img/logo.png',
                  color: Colors.white,
                )),

                const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),

                //item
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                iconColor: Colors.white,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pageList[_selectedIndex],
    );
  }
}
