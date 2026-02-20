import 'penumpang.dart';
import 'ekonomi_bus.dart';
import 'bisnis_bus.dart';
import 'eksekutif_bus.dart';


void main() {
  runTerminal();
}

void runTerminal() {
  //ini perubahan
  List<Penumpang> penumpang = [
    EkonomiBus.jakartaBandung("Budi"),
    EkonomiBus.jakartaSolo("Wawan"),
    EkonomiBus.jakartaYogyakarta("Joko"),
    BisnisBus("Andi", "Jakarta - Bandung"),
    EksekutifBus("Sinta", "Jakarta - Bandung")
  ];

  for (var p in penumpang) {
  p.cetakTiket(); // polymorphism

  if (p is EkonomiBus) {
    print(">> Kelas Ekonomi");
  } else if (p is BisnisBus) {
    print(">> Kelas Bisnis");
  } else if (p is EksekutifBus) {
    print(">> Kelas Eksekutif");
  }

  print("-----------------------");
}
}
