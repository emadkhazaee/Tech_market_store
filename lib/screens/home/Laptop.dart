import 'package:flutter/material.dart';
import 'package:tech_market/tools/text_style.dart';

class laptop extends StatelessWidget {
  const laptop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LaptopScreen(),
    );
  }
}

class LaptopScreen extends StatelessWidget {
  const LaptopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Laptop',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Ascending price'),
                  IconButton(
                    icon: const Icon(Icons.filter_list, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: const [
                    ProductItem(
                        image: 'assets/images/laptop1.png',
                        name: 'Surface laptop 3',
                        price: 'USD 999'),
                    ProductItem(
                        image: 'assets/images/laptop2.png',
                        name: 'XPS laptop 13',
                        price: 'USD 899'),
                    ProductItem(
                        image: 'assets/images/laptop3.png',
                        name: 'LG Gram 17',
                        price: 'USD 1399'),
                    ProductItem(
                        image: 'assets/images/laptop4.png',
                        name: 'Macbook pro 13',
                        price: 'USD 1299'),
                    ProductItem(
                        image: 'assets/images/laptop5.png',
                        name: 'MateBook 13',
                        price: 'USD 949'),
                    ProductItem(
                        image: 'assets/images/laptop6.png',
                        name: 'PixelBook Go',
                        price: 'USD 849'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductItem(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(image, fit: BoxFit.cover, height: 120),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: black),
                    Text(
                      price,
                      style: blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
