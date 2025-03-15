import 'package:flutter/material.dart';
import '../../models/produk.dart';
import '../../widgets/card_item.dart';

class CardMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMakanan.length,
      itemBuilder: (context, index) {
        return CardItem(
          produkMakanan: listMakanan[index],
          klikItem: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("anda mengeklik ${listMakanan[index].nama}"),
                duration: Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}
