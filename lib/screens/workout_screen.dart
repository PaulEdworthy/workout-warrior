import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  List<String> groups = [
    'Chest',
    'Back',
    'Shoulders',
    'Biceps',
    'Triceps',
    'Quads',
    'Hamstrings',
    'Calves',
    'Abs'
    // 'Traps',
    // 'Forearms',
    // 'Obliques',
    // 'Low Back'
  ];
  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Build Your Workout'.toUpperCase(),
              style: const TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48.0),
            const Text(
              'SELECT WORKOUT BY',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: DropDownMultiSelect(
                selected_values_style:
                    const TextStyle(fontWeight: FontWeight.bold),
                options: groups,
                selectedValues: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                whenEmpty: 'Muscle Group',
              ),
            ),
            const SizedBox(height: 24.0),

            const Text(
              'By Exercises',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('This is a fullscreen dialog.'),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            ),

            // child: TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Start Typing by Body Part',
            //   ),
            // ),
          ],
        ),
        // TODO Muscle Groups Being worked
        // After exercises are chosen

        // TODO Exercises Chosen

        // TODO Button to Start Workout
      ),
    );
  }
}
