import 'package:flutter/material.dart';
import 'package:sup/models/car.dart';

class CarDetailPage extends StatefulWidget {
  final Cars car;
  CarDetailPage({required this.car});
  @override
  _CarDetailPageState createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  bool showInMiles = false; // Флаг для переключения единиц
  @override
  Widget build(BuildContext context) {
    final car = widget.car;
    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "name: ${car.name}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "model: ${car.model}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 7.5,),
            Text(
              "horsepowers: ${car.horsepowers}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7.5,),      
            Text(
              "probeg: ${car.probeg}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7.5,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showInMiles = !showInMiles;
                });
              },
              child: Text(showInMiles ? "Show in KM" : "Show in Miles"),
            ),
          ],
        ),
      ),
    );
  }
}