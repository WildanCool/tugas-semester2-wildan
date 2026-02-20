import 'penumpang.dart';
import 'cetak_tiket.dart';

class BisnisBus extends Penumpang implements CetakTiket {
  BisnisBus(super._nama, super._rute);

  @override
  double hargaTiket() => 150000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe: Bisnis Bus");
    print("Fasilitas: Legrest + Snack");
  }
}
