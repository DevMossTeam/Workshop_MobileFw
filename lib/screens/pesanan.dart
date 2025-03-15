
import 'package:flutter/material.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text("Halaman Pesanan"))),
    );
  }
}
