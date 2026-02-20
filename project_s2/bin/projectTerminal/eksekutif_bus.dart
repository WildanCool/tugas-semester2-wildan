import 'penumpang.dart';
import 'cetak_tiket.dart';

class EksekutifBus extends Penumpang implements CetakTiket {
  EksekutifBus(super._nama, super._rute);

  @override
  double hargaTiket() => 250000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe: Eksekutif Bus");
    print("Fasilitas: AC, Snack, Meal");
  }
}
