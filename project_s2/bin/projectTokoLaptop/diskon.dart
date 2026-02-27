mixin DiskonMixin {
  double persenDiskon = 0.0;

  double hitungDiskon(double harga) {
    return harga * persenDiskon;
  }
}