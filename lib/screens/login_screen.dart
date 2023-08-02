import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LOGIN!'),
          ],
        ),
      ),
    );
  }
}

// TODO the last thing for now, since I'm the only user.
// TODO But complete it to learn about security in Flutter apps.