import 'package:flutter/material.dart';

import 'model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc ,Key? key}): super(key : key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

    Color apparRengi = Colors.blue;
    late PaletteGenerator generator;  //kullanmadan once hata vermemesi için initialize ettik.

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
     
      print("init state çalıştı.");
      //once detay ekrana gelsim sonra AppBar rengi çalışsın dedik
      WidgetsBinding.instance!.addPostFrameCallback((_) => apparRenginiBul());
    }

  @override
  Widget build(BuildContext context) {
    print("build çalıştı");
    
    return Scaffold(
     primary: true,
       body: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(   //bu customa ait ozellik appar kullanamayız bunu kullanırken.    
            expandedHeight: 250,
            pinned: true,
            backgroundColor: apparRengi,
            flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenBurc.burcadi + " Burcu ve Özellikleri"),
            centerTitle: true, 
              background:
              Image.asset('images/'+widget.secilenBurc.burcBuyukResim,
            fit: BoxFit.cover,),
            ),
            

           ),
           SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(8),
              child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.subtitle1),

            ),
           ),
         ],
       ),
       
     
    );
  }
  
  void apparRenginiBul() async{
    print("build bitti baskın renk bulunacak");
        generator=await PaletteGenerator.fromImageProvider(
          AssetImage(('images/' + widget.secilenBurc.burcBuyukResim),),);
          apparRengi=generator.dominantColor!.color;
    print("baskın renk bulundu build metodu tekar çalıştıruılacak. ");

    setState(() {
  
});



  }
}