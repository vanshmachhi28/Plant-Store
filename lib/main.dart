import 'package:flutter/material.dart';
import 'models/plant_model.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';


void main() => runApp(const PlantStoreApp());

class PlantStoreApp extends StatelessWidget {
  const PlantStoreApp({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Store',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Roboto'),
      home: const HomeScreen(),
      routes: {
        DetailScreen.routeName: (ctx) => const DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
