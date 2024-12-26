// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sup/models/car.dart';
import 'package:sup/pages/description.dart';


class CarsPage extends StatelessWidget {
  const CarsPage({super.key});
  static const String route = '/carspage';

 

  @override
  Widget build(BuildContext context) {
     final List<Cars> car = [
    Cars(name: "Mercedes", model: "CLA", horsepowers: 700, probeg: 30000),
    Cars(name: "BMW", model: "M5", horsepowers: 800, probeg: 23000),
    Cars(name: "Honda", model: "Stream", horsepowers: 700, probeg: 177777),
    Cars(name: "Lamborgini", model: "Urus", horsepowers: 760, probeg: 84000),    
  ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: ListView.builder(
        itemCount: car.length,
        itemBuilder: (context, index){
          final Cars = car[index];
          return ListTile(
            title: Text(Cars.name),
            subtitle: Text("Probeg: ${Cars.probeg}"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(car: Cars),
                )
              );
            },
          );
        },
      ),
    );
  }
}