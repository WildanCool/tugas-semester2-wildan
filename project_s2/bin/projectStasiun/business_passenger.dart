import 'passenger.dart';

class BusinessPassenger extends Passenger {
  BusinessPassenger(super._nama);

  @override
  double hitungTiket() => 250000;

  @override
  void printTicket() {
    super.printTicket();
    print("Tipe: Business Passanger");
    print("Fasilitas: Kursi large, Snack");
  }
}
