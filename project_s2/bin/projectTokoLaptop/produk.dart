abstract class Produk {
  String nama;
  double harga;
  int stok;

  Produk(this.nama, this.harga, this.stok);

  double hitungHargaAkhir();

  void infoProduk() {
    print("Nama  : $nama");
    print("Harga : Rp $harga");
    print("Stok  : $stok");
  }
}