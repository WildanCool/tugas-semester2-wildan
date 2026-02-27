import 'penumpang.dart';
import 'cetak_tiket.dart';

class LRT extends Penumpang implements CetakTiket {
  LRT(super._nama, super._rute, super._jumlah);
  LRT.jatimulyaDukuhAtas(String nama, int jumlah) : super(nama, "Jatimulya - Dukuh Atas", jumlah);

  @override
  double hargaTiket() => 150000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe: LRT");
    print("Fasilitas: Legrest + Snack");
  }
}
