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

  // controller allows us access to the text field
  final _controller = TextEditingController();

  void addExercises() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          controller: _controller,
          onSave: saveExercise,
        );
      },
    );
  }

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
              'By Target Muscle',
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
                whenEmpty: 'Select by Muscle Group',
              ),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'OR',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
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
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              // child: TextField(
              //   decoration: InputDecoration(
              //     hintText: 'Start Typing by Body Part',
              //   ),
              // ),
              child: ElevatedButton(onPressed: addExercises()),
            ),
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
