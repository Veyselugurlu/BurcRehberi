import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar; 

  BurcListesi(){
    //gecici liste yapisi buraya geliyor tum burclara ataniyor.
    tumBurclar = veriKaynaginiHazirla();

    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burclar Listesi"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){

          return BurcItem(listelenenBurc: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,),
      ),
    );
  }
  
  List<Burc> veriKaynaginiHazirla() 
  {
    List<Burc> geciciliste=[];
      for(int i =0;i<12;i++)
      {
        var burcAdi=Strings.BURC_ADLARI[i];
        var burcTarihi=Strings.BURC_TARIHLERI[i];
        var burcDetayi=Strings.BURC_GENEL_OZELLIKLERI[i];
        var burcKcukResim=Strings.BURC_ADLARI[i].toLowerCase() + '${i+1}.png';
        var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase() +'${i+1}.png';
        Burc eklencekBurc=Burc(burcAdi,burcTarihi, burcDetayi,burcKcukResim ,burcBuyukResim);

        geciciliste.add(eklencekBurc);
      }
    return geciciliste; //olusturulan liste geriye donduruluo 
  }
}