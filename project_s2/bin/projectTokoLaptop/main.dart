import 'laptop.dart';
import 'pc_gaming.dart';
import 'pc_office.dart';

void main() {
  var laptop = Laptop("Lenovo LOQ", 15000000, 5);
  var pcGaming = PCGaming("PC RTX 5000", 12000000, 3);
  var pcOffice = PCOffice("PC Kantor i7", 8000000, 10);

  print("=== LAPTOP ===");
  laptop.infoProduk();
  print("Harga Akhir : Rp ${laptop.hitungHargaAkhir()}");
  laptop.tambahGaransi();

  print("\n=== PC GAMING ===");
  pcGaming.infoProduk();
  print("Harga Akhir : Rp ${pcGaming.hitungHargaAkhir()}");

  print("\n=== PC OFFICE ===");
  pcOffice.infoProduk();
  print("Harga Akhir : Rp ${pcOffice.hitungHargaAkhir()}");
}