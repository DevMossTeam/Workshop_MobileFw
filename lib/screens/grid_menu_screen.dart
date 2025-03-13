import 'package:flutter/material.dart';
import 'package:kuliah_list_view/widgets/grid_item.dart';
import '../models/produk.dart';

class GridMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.9,
      ),
      itemCount: listProduk.length,
      itemBuilder: (context, index) {
        return GridItem(
          produk: listProduk[index],
          kikItem: () {
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
