// ignore_for_file: public_member_api_docs, sort_constructors_first
class Makanan {
  final String nama;
  final String deskripsi;
  final String imageUrl;
  final double harga;
  final double rating;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.imageUrl,
    required this.harga,
    required this.rating,
  });
}

class Minuman {
  final String nama;
  final String deskripsi;
  final String imageUrl;
  final double harga;
  final double rating;
  Minuman({
    required this.nama,
    required this.deskripsi,
    required this.imageUrl,
    required this.harga,
    required this.rating,
  });
}

final List<Makanan> listMakanan = [
  Makanan(
    nama: "Item 1",
    deskripsi: "Deskripsi item 1",
    harga: 10000,
    rating: 4.5,
    imageUrl: "https://picsum.photos/id/1/200/300",
  ),
  Makanan(
    deskripsi: "Deskripsi item 2",
    imageUrl: "https://picsum.photos/id/2/200/300",
    harga: 15000,
    nama: "Item 2",
    rating: 4.0,
  ),
  Makanan(
    nama: "Item 3",
    deskripsi: "Deskripsi item 1",
    imageUrl: "https://picsum.photos/id/3/200/300",
    harga: 10000,
    rating: 4.5,
  ),
  Makanan(
    nama: "Item 4",
    deskripsi: "Deskripsi item 2",
    imageUrl: "https://picsum.photos/id/4/200/300",
    harga: 15000,
    rating: 4.0,
  ),
];
