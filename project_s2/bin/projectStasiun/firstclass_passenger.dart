import 'passenger.dart';

class FirstclassPassenger extends Passenger {
  FirstclassPassenger(super._nama);

  @override
  double hitungTiket() => 700000;

  @override
  void printTicket() {
    super.printTicket();
    print("Tipe: First Class Passenger");
    print("Fasilitas: Kursi luxury, Snack, Meal, Welcome drink");
  }
}
