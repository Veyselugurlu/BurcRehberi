class Burc{
  final String _burcadi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  get burcadi => this._burcadi;


  get burcTarihi => this._burcTarihi;


  get burcDetayi => this._burcDetayi;


  get burcKucukResim => this._burcKucukResim;


  get burcBuyukResim => this._burcBuyukResim;



    Burc(this._burcadi,this._burcTarihi,this._burcDetayi,this._burcKucukResim,this._burcBuyukResim);

 @override
  String toString() {
    
    return '$_burcadi-$_burcBuyukResim';
  }

}