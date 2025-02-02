import 'dart:async';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class success extends StatefulWidget {
  const success({super.key});

  @override
  State<success> createState() => _successState();
}

// ignore: camel_case_types
class _successState extends State<success> {
  int _countdown = 3;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() {
          _countdown--;
        });
      } else {
        timer.cancel();
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0001FC),
        body: Center(
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/Validation.png')),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$_countdown',
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
