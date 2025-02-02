import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tech_market/tools/text_style.dart';
import 'package:tech_market/screens/check_out/success.dart';

// ignore: camel_case_types
class check_out extends StatefulWidget {
  const check_out({super.key});

  @override
  State<check_out> createState() => _CheckoutState();
}

class _CheckoutState extends State<check_out> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Check out', style: black_bold),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 126, 126, 126)
                                .withOpacity(0.2),
                            offset: const Offset(4, 4),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Product.png',
                              height: 130,
                              width: 97,
                            ),
                            const SizedBox(height: 20),
                            const Text('i phone 11 pro', style: black),
                            const Text('999 usd', style: blue),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text('Delivery',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('12 Madison Avenue, NYC'),
                const SizedBox(height: 20),
                const Text('Payment',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('Visa **** 6789'),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('USD 999',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 32),
                InkWell(
                  onTap: () async {
                    setState(() {
                      _isLoading = true;
                    });

                    await Future.delayed(const Duration(seconds: 3));

                    setState(() {
                      _isLoading = false;
                    });

                    // ignore: use_build_context_synchronously
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const success()),
                    ).then((_) => setState(() {}));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0001FC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'Add to card',
                        style: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
