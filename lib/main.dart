import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kuliah_list_view/screens/card_menu_screen.dart';
import 'package:kuliah_list_view/screens/grid_menu_screen.dart';
import 'package:kuliah_list_view/screens/home.dart';
import 'package:kuliah_list_view/screens/login_screen.dart';
import 'package:kuliah_list_view/screens/pesanan.dart';
import 'package:kuliah_list_view/screens/profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int menuIndex = 0;

  void pilihMenu(int index) {
    setState(() {
      menuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      Home(username: widget.username),
      CardMenuScreen(),
      GridMenuScreen(),
      Pesanan(),
      Profil(),
    ];

    return Scaffold(
      appBar:
          menuIndex == 0
              ? null
              : AppBar(
                backgroundColor: Colors.blue,
                title: Text(
                  [
                    "HOME",
                    "MAKANAN",
                    "MINUMAN",
                    "PESANAN",
                    "PROFIL",
                  ][menuIndex],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      body: screens[menuIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 20),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          buttonBackgroundColor: Colors.orange,
          animationDuration: const Duration(milliseconds: 300),
          height: 60,
          index: menuIndex,
          onTap: pilihMenu,
          items: const [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.food_bank, color: Colors.white),
            Icon(Icons.local_drink_rounded, color: Colors.white),
            Icon(Icons.list_alt, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
