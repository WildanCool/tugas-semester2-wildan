import 'penumpang.dart';
import 'cetak_tiket.dart';

class KRL extends Penumpang implements CetakTiket {
  KRL(super._nama, super._rute, super._jumlah);
  KRL.cisaukSerpongRawaBuntu(String nama, int jumlah) : super(nama, "Cisauk, Serpong, Rawa Buntu", jumlah);
  KRL.kebayoranPalmerahTanahAbang(String nama, int jumlah) : super(nama, "Kebayoran, Palmerah, Tanah Abang", jumlah);
  KRL.pondokCinaDepokBaruDepok(String nama, int jumlah) : super(nama, "Pondok Cina, Depok Baru, Depok", jumlah);

  @override
  double hargaTiket() => 75000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe : KRL");
    print("Fasilitas: Kursi Standar");
  }
}
