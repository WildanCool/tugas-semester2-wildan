import 'buku.dart';
import 'pinjam.dart';
import 'kembalikan.dart';

class BukuPerpustakaan extends Buku implements Pinjam, Kembalikan {
  String namaPeminjam;

  BukuPerpustakaan(super.judul, super.stock, this.namaPeminjam);

  @override
  void pinjam() {
    if (stock > 0) {
      kurangiStock();
      print("$namaPeminjam meminjam buku '$judul'");
      infoStock();
    } else {
      print("Maaf, stok buku '$judul' habis.");
    }
  }

  @override
  void kembalikan() {
    tambahStock();
    print("Buku '$judul' berhasil dikembalikan.");
    infoStock();
  }

  void generateReport() {
    print("======== Buku Perpustakaan ========");
    infoStock();
    print("===================================");
    pinjam();
    print("===================================");
    kembalikan();
    print("===================================");
  }
}
