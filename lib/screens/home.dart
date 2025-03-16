import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String username;

  const Home({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Warna latar belakang
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header dengan avatar dan teks selamat datang
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple], // Warna gradasi
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang ${username}",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Pengguna, Ayo Jelajahi!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.blue),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // Grid Menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2, // Jumlah kolom
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuItem(Icons.fastfood, "Makanan", Colors.orange),
                  _buildMenuItem(Icons.local_drink, "Minuman", Colors.blue),
                  _buildMenuItem(Icons.shopping_cart, "Pesanan", Colors.green),
                  _buildMenuItem(Icons.person, "Profil", Colors.red),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk menu item
  Widget _buildMenuItem(IconData icon, String title, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {}, // Tambahkan navigasi di sini
        splashColor: Colors.blue.withAlpha(50),
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
