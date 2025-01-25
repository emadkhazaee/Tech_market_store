// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tech_market/screens/Login_register/Login.dart';
import 'package:tech_market/screens/Login_register/register.dart';
import 'package:tech_market/tools/text_style.dart';

// ignore: camel_case_types
class connexion extends StatelessWidget {
  const connexion({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: height / 16,
              ),
              const Text(
                'Connexion',
                style: white_bold,
              ),
              SizedBox(
                height: height / 3.4,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const register()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      'Create an account',
                      style: blue_bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Google.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Connect with Google',
                        style: TextStyle(
                            color: Color(0xFF555555),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF415A93),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Facebook.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Connect with Facebook',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account ? ',
                    style: TextStyle(color: Color(0xFFFBDF00)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const login()));
                    },
                    child: const Text(
                      'Login ',
                      style: TextStyle(
                          color: Color(0xFFFBDF00),
                          fontWeight: FontWeight.bold),
                    ),
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
                    '4/4',
                    style: small_black,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip for now',
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
