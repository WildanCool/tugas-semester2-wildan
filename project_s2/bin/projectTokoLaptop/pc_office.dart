import 'produk.dart';

class PCOffice extends Produk {
  PCOffice(super.nama, super.harga, super.stok);

  @override
  double hitungHargaAkhir() {
    return harga;
  }
}