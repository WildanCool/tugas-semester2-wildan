import 'package:intl/intl.dart';
import 'ticketable.dart';

abstract class Passenger implements Ticketable {
  String _nama = '';

  Passenger(this._nama);

  String get thisNama => _nama;
  set thisNama(String nama) {
    if (nama.isNotEmpty) {
      _nama = nama;
    }
  }

  double hitungTiket();

  String _formatRupiah(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp.',
      decimalDigits: 0,
    ).format(amount);
  }

  @override
  void printTicket() {
    print("=== Tiket $runtimeType ===");
    print("Nama: $_nama");
    print("Harga: ${_formatRupiah(hitungTiket())}");
  }
}
