import 'package:intl/intl.dart';
import 'cetak_tiket.dart';

abstract class Penumpang implements CetakTiket {
  String _nama = "";
  String _rute = "";
  int _jumlah = 0;

  Penumpang(this._nama, this._rute, this._jumlah);

  //Penumpang
  String get thisNama => _nama;
  set thisNama(String nama) {
    if (nama.isNotEmpty) {
      _nama = nama;
    }
  }

  //Rute
  String get rute => _rute;
  set rute(String rute) {
    if (rute.isNotEmpty) {
      _rute = rute;
    }
  }

  //Jumlah Penumpang
  int get jumlah => _jumlah;
  set jumlah(int jumlah) {
    if (jumlah > 0) {
      _jumlah = jumlah;
    }
  }

  double hargaTiket();

  String _formatRupiah(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(amount);
  }

  void infoPenumpang() {
    print("===== Tiket $runtimeType =====");
    print("Nama: $_nama");
    print("Rute: $_rute");
    print("Jumlah Penumpang: $_jumlah");
    print("Harga: ${_formatRupiah(hargaTiket())}");
  }
}
