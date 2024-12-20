import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  static const String route = '/columnrow';
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Columns"),
        ),
        body:const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.car_repair, size: 50,),
            Icon(Icons.rocket, size: 50,),
            Icon(Icons.military_tech, size: 50,),
            SizedBox(
              width: double.infinity,
            )
          ],
        )
      );
  }
}