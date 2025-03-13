class Produk {
  final String nama;
  final String deskripsi;
  final String imageUrl;
  final double harga;
  final double rating;

  Produk({
    required this.nama,
    required this.deskripsi,
    required this.imageUrl,
    required this.harga,
    required this.rating,
  });
}

final List<Produk> listProduk = [
  Produk(
    nama: "Item 1",
    deskripsi: "Deskripsi item 1",
    harga: 10000,
    rating: 4.5,
    imageUrl: "https://picsum.photos/id/1/200/300",
  ),
  Produk(
    deskripsi: "Deskripsi item 2",
    imageUrl: "https://picsum.photos/id/2/200/300",
    harga: 15000,
    nama: "Item 2",
    rating: 4.0,
  ),
  Produk(
    nama: "Item 3",
    deskripsi: "Deskripsi item 1",
    imageUrl: "https://picsum.photos/id/3/200/300",
    harga: 10000,
    rating: 4.5,
  ),
  Produk(
    nama: "Item 4",
    deskripsi: "Deskripsi item 2",
    imageUrl: "https://picsum.photos/id/4/200/300",
    harga: 15000,
    rating: 4.0,
  ),
];
