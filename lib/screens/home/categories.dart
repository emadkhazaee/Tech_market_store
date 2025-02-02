import 'package:flutter/material.dart';
import 'package:tech_market/screens/home/Laptop.dart';
import 'package:tech_market/tools/text_style.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CategoryItem(title: 'All'),
          CategoryItem(title: 'Computers'),
          CategoryItem(title: 'Accessories'),
          CategoryItem(title: 'Smartphones'),
          CategoryItem(title: 'Smart objects'),
          CategoryItem(title: 'Laptop'),
          CategoryItem(title: 'Speakers'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;

  const CategoryItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          title: Text(
            title,
            style: black,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const laptop()));
          },
        ),
      ),
    );
  }
}
