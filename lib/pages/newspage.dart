import 'package:flutter/material.dart';

class Newspage extends StatelessWidget {
  static const String route = '/';
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.5,
              ),
              children: [
                _buildGridButton(Icons.phone_android, "Default Theme", Colors.teal,),
                _buildGridButton(Icons.apps, "Full Apps", Colors.deepPurple),
                _buildGridButton(Icons.language, "Integration", Colors.green),
                _buildGridButton(Icons.dashboard, "Dashboard", Colors.orange),
              ],
            ),
            SizedBox(height: 20),
            // Themes Section
            Expanded(
              child: ListView(
                children: [
                  _buildThemeTile(
                      icon: Icons.cut, title: "File Manager", screens: "Theme 1 Screens", color: Colors.orange,),
                  _buildThemeTile(
                      icon: Icons.build, title: "Exercise Tips", screens: "Theme 2 Screens", color: Colors.teal),
                  _buildThemeTile(
                      icon: Icons.pentagon, title: "Food Recipe", screens: "Theme 3 Screens", color: Colors.blue),
                  _buildThemeTile(
                      icon: Icons.cases, title: "Gym", screens: "Theme 4 Screens", color: Colors.green),
                  _buildThemeTile(
                      icon: Icons.pan_tool_rounded, title: "e-wallet", screens: "Theme 5 Screens", color: Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildGridButton(IconData icon, String label, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildThemeTile(
      {required IconData icon, required String title, required String screens, required Color color}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.2),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(screens),
      trailing: Icon(Icons.arrow_forward, color: Colors.grey),
      onTap: () {
      },
    );
  }
}