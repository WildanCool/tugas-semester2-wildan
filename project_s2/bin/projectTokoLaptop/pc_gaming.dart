import 'produk.dart';
import 'diskon.dart';

class PCGaming extends Produk with DiskonMixin {
  PCGaming(super.nama, super.harga, super.stok) {
    persenDiskon = 0.05; 
  }

  @override
  double hitungHargaAkhir() {
    return harga - hitungDiskon(harga);
  }
}