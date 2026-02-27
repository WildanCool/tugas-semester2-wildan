import 'penumpang.dart';
import 'cetak_tiket.dart';

class MRT extends Penumpang implements CetakTiket {
  MRT(super._nama, super._rute, super._jumlah);

  @override
  double hargaTiket() => 250000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe: MRT");
    print("Fasilitas: AC, Snack, Meal");
  }
}
