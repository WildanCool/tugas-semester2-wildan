import 'passenger.dart';
import 'economy_passenger.dart';
import 'business_passenger.dart';
import 'firstclass_passenger.dart';

void main() {
  runStation();
}

void runStation() {
  //ini perubahan
  List<Passenger> passengers = [
    EconomyPassenger("Budi"),
    BusinessPassenger("Andi"),
    FirstclassPassenger("Kevin"),
  ];

  for (var p in passengers) {
    //looping
    p.printTicket(); //polymorphism
  }
}
