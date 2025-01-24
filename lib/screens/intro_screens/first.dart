import 'package:flutter/material.dart';
import 'package:tech_market/screens/intro_screens/Second.dart';
import 'package:tech_market/tools/text_style.dart';

// ignore: camel_case_types
class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    //     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF0001FC),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: height / 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/earth.png'),
                ],
              ),
              const SizedBox(
                height: 100,
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
                    '1/4',
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
                      MaterialPageRoute(builder: (context) => const second()));
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
