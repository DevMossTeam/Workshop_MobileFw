import 'package:flutter/material.dart';
import '../models/produk.dart';
import '../widgets/list_item.dart';

class ListMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: listMakanan.length,
      itemBuilder: (context, index) {
        return ListItem(produk: listMakanan[index]);
      },
    ); 
  }
}
