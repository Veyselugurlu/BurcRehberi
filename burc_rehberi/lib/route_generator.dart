import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings){
    switch(settings.name){
      case '/':
      return MaterialPageRoute(builder: 
      (context)=>BurcListesi(),
      );
      case '/burcDetayi':
      final Burc secilen =settings.arguments as Burc;
      
      return MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc:secilen),);
    }

  }


}