import 'penumpang.dart';
import 'cetak_tiket.dart';

class EkonomiBus extends Penumpang implements CetakTiket {
  EkonomiBus(super._nama, super._rute);
  EkonomiBus.jakartaBandung(String nama) : super(nama, "Jakarta - Bandung");
  EkonomiBus.jakartaSolo(String nama) : super(nama, "Jakarta - Solo");
  EkonomiBus.jakartaYogyakarta(String nama) : super(nama, "Jakarta - Yogyakarta");

  @override
  double hargaTiket() => 75000;

  @override
  void cetakTiket() {
    super.infoPenumpang();
    print("Tipe : Ekonomi Bus");
    print("Fasilitas: Kursi Standar");
  }
}
