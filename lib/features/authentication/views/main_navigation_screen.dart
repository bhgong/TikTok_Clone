import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Unit Changer"),
    ),
    const Center(
      child: Text("Search"),
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onTap,
        destinations: const [
          NavigationDestination(
              icon: FaIcon(
                FontAwesomeIcons.calculator,
                color: Colors.amber,
              ),
              label: "Basic"),
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.unity,
              color: Colors.teal,
            ),
            label: "Unit Change",
          ),
        ],
      ),
    );
  }
}
