abstract class Buku {
  String _judul;
  int _stock;

  Buku(this._judul, this._stock);

  String get judul => _judul;
  int get stock => _stock;

  void infoStock() {
    print("Judul : $_judul");
    print("Stock : $_stock");
  }

  void kurangiStock() {
    if (_stock > 0) {
      _stock--;
    }
  }

  void tambahStock() {
    _stock++;
  }
}