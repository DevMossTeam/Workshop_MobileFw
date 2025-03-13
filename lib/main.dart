import 'package:flutter/material.dart';
import 'package:kuliah_list_view/screens/card_menu_screen.dart';
import 'package:kuliah_list_view/screens/login_screen.dart';
import 'screens/grid_menu_screen.dart';
import 'screens/list_menu_screen.dart';

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
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int menuIndex = 0;

  final List<Widget> screens = [
    CardMenuScreen(),
    GridMenuScreen(),
    ListMenuScreen(),
  ];

  void pilihMenu(int index) {
    setState(() {
      menuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("List Produk", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: screens[menuIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'Grid'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
        ],
        onTap: pilihMenu,
        selectedItemColor: Colors.blue,
        currentIndex: menuIndex,
      ),
    );
  }
}
