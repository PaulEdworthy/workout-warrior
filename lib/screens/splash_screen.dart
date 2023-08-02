import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'home_screen.dart';
import '/utils/colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/splash_icon.png'),
            const SizedBox(height: 16.0),
            const Text(
              'WORKOUT WARRIOR',
              style: TextStyle(
                  color: primary, fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const SpinKitThreeBounce(
              color: primary,
              size: 30.0,
            ),
            // const CircularProgressIndicator(
            //   color: primary,
            // ),
          ],
        ),
      ),
    );
  }
}
