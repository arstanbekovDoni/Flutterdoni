import 'package:flutter/material.dart';
import 'package:sup/models/car.dart';

class SettingsPage extends StatefulWidget {
  // Define the route as a constant string
  static const route = '/settings';

  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isKm = true;
 List<Car> cars = [
      Car(name: "Lexus GX", mileage: 20000, maxSpeed: 220),
      Car(name: "Honda Fit", mileage: 13000, maxSpeed: 180),
      Car(name: "BWM M5 F90", mileage: 80000, maxSpeed: 320),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог машин'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 30, 40, 50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Переключить единицы:",
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: isKm,
                  onChanged: (value) {
                    setState(() {
                      isKm = value;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  final car = cars[index];
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(car.name),
                      subtitle: Text(
                        'Пробег: ${isKm ? car.mileage : car.convertKmToMiles()} ${isKm ? "км" : "мили"}\n'
                        'Макс. скорость: ${isKm ? car.maxSpeed : car.convertMaxSpeedToMiles()} ${isKm ? "км/ч" : "мили/ч"}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}