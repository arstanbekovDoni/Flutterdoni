import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sup/pages/columnrow.dart';
import 'package:sup/pages/settingspage.dart';
import 'package:sup/pages/newspage.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go(Newspage.route);
        break;
      case 1:
        context.go(SettingsPage.route);
        break;
      case 2:
        context.go(ColumnRow.route);
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: changeTab,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
            NavigationDestination(icon: Icon(Icons.air), label: 'Column')
          ]),
    );
  }
}