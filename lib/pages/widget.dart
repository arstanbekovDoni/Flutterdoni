import 'package:flutter/material.dart';



class CardWidget extends StatefulWidget {
  const CardWidget({super.key});
  static const String route = '/mywidget';

  @override
  _CardWidgetState createState() => _CardWidgetState();
}
class _CardWidgetState extends State<CardWidget> {
  bool _DescriptionIsVisible = false;
  void _toggleDescriptionVisibility() {
    setState(() {
      _DescriptionIsVisible = !_DescriptionIsVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    "https://i.ytimg.com/vi/iZt7Fwu91FI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCl1APnpyrZMoSNVvKsWhBIw72qqg",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'BMW M5 F90 Competition',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                if (_DescriptionIsVisible)
                  const Text(
                    'The BMW M5 F90 Competition is a high-performance sports sedan powered by a 4.4-liter twin-turbo V8 engine producing 617 hp and 553 lb-ft of torque. It accelerates from 0-60 mph in just 3.1 seconds and features an adjustable xDrive all-wheel-drive system paired with an 8-speed M Steptronic transmission.',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: _toggleDescriptionVisibility,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    _DescriptionIsVisible ? "Hide Description" : "Show Description",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}