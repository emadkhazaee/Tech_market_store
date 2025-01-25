// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tech_market/screens/intro_screens/Third.dart';
import 'package:tech_market/tools/text_style.dart';

// ignore: camel_case_types
class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0001FC),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/computer_intro.png',
                fit: BoxFit.cover,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The best tech market',
                    style: white_bold,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2/4',
                    style: small_black,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const third()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
