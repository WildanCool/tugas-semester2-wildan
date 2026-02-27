import 'diskon.dart';
import 'garansi.dart';
import 'produk.dart';

class Laptop extends Produk with DiskonMixin, GaransiTambahan {
  Laptop(super.nama, super.harga, super.stok) {
    persenDiskon = 0.10; 
  }

  @override
  double hitungHargaAkhir() {
    return harga - hitungDiskon(harga);
  }
}
