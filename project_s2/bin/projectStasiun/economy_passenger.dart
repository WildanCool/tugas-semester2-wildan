import 'passenger.dart';

class EconomyPassenger extends Passenger {
  EconomyPassenger(super._nama);

  @override
  double hitungTiket() => 100000;

  @override
  void printTicket() {
    super.printTicket();
    print("Tipe: Economy Passenger");
    print("Fasilitas: Kursi Standar");
  }
}
