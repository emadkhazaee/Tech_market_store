import 'package:flutter/material.dart';
import 'package:tech_market/screens/search/info_product.dart';
import 'package:tech_market/tools/text_style.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Search',
                  style: black_title,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintText: 'Search here...',
                hintStyle: TextStyle(color: const Color(0xFF0001FC)),
                fillColor: Color(0xFFE0ECF8),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: const Color(0xFF0001FC),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Last viewed',
                  style: black_bold,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => info_product()));
              },
              child: Container(
                height: 105,
                width: double.infinity,
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'assets/images/Product.png',
                        fit: BoxFit.contain,
                        height: 50,
                        width: 80,
                      ),
                    ),
                    Center(
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('iPhone 11 Pro', style: black),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('999 usd', style: blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
