import 'package:flutter/material.dart';
import '../../models/produk.dart';
import '../../widgets/card_item.dart';

class CardMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listProduk.length,
      itemBuilder: (context, index) {
        return CardItem(
          produk: listProduk[index],
          klikItem: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("anda mengeklik ${listProduk[index].nama}"),
                duration: Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}
