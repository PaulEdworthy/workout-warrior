import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import '../utils/colours.dart';
import 'workout_screen.dart';
import 'history_screen.dart';
import 'recovery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    WorkoutScreen(),
    HistoryScreen(),
    RecoveryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GNav(
          gap: 8,
          iconSize: 36,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          tabActiveBorder: Border.all(color: primary, width: 1),
          tabBackgroundColor: primary,
          color: primary,
          tabs: const [
            GButton(
              icon: LineIcons.dumbbell,
              text: 'Workout',
            ),
            GButton(
              icon: LineIcons.history,
              text: 'History',
            ),
            GButton(
              icon: LineIcons.heartbeat,
              text: 'Recovery',
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
