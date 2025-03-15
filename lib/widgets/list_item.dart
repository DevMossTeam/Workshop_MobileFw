import 'package:flutter/material.dart';
import '../models/produk.dart';

class ListItem extends StatelessWidget {
  final Makanan produk;

  const ListItem({required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      elevation: 4,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            produk.imageUrl,
            width: 90,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          produk.nama,
          style: TextStyle(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produk.deskripsi,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Rp ${produk.harga}",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
