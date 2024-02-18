import 'package:burc_rehberi/route_generator.dart';
import 'package:flutter/material.dart';
import 'burc_listesi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //uyg yaptigimiz için artık debuglaı kaldırıyoruz.
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
    // home: BurcListesi(), //opn gemnerator ile yapımınıda gorelim 
  onGenerateRoute: RouteGenerator.routeGenerator,   //fonksiyonu tetikliyoruz.
    );
  }
}


