import 'penumpang.dart';
import 'KRL.dart';
import 'LRT.dart';
import 'MRT.dart';


void main() {
  runTerminal();
}

void runTerminal() {
  //ini perubahan
  List<Penumpang> penumpang = [
    KRL.cisaukSerpongRawaBuntu("Budi", 100),
    KRL.kebayoranPalmerahTanahAbang("Wawan", 120),
    KRL.pondokCinaDepokBaruDepok("Joko", 120),
    LRT.jatimulyaDukuhAtas("Joko", 70),
    MRT("Sinta", "Jakarta - Bandung", 25)
  ];

  for (var p in penumpang) {
  p.cetakTiket(); // polymorphism

  if (p is KRL) {
    print(">> Kelas Ekonomi");
  } else if (p is LRT) {
    print(">> Kelas Bisnis");
  } else if (p is MRT) {
    print(">> Kelas Eksekutif");
  }

  print("-----------------------");
}
}
