import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc ,Key? key}): super(key : key);

  @override
  Widget build(BuildContext context) {
    //tek tek textstyle tanımlamak yerine mytextstyle. diyip stil uygulariz.

    var myTextStyle=Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: (){
           Navigator.pushNamed(context, '/burcDetayi',arguments: listelenenBurc);
            
          },

          leading: Image.asset(
            "images/"+listelenenBurc.burcKucukResim),
          title: Text(listelenenBurc.burcadi,
          style: myTextStyle.headline5,

          ),
          subtitle: Text(listelenenBurc.burcTarihi,
          style: myTextStyle.subtitle1,),
          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
        ),
      ),
    );
  }
}