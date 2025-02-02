import 'package:flutter/material.dart';
import 'package:tech_market/screens/home/categories.dart';
import 'package:tech_market/tools/text_style.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFF),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildProductCard(),
              const SizedBox(height: 20),
              _buildCategoryRow(context),
              const SizedBox(height: 40),
              _buildSectionTitle('Sales'),
              const SizedBox(height: 20),
              _buildProductRow(width),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Text('Home', style: black_title)],
    );
  }

  Widget _buildProductCard() {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFF0001FC),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildProductInfo(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset('assets/images/speaker.png'),
          ),
        ],
      ),
    );
  }

  Widget _buildProductInfo() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Text('Bose Home Speaker', style: white),
        ),
        Text('279 usd', style: small_black_white),
      ],
    );
  }

  Widget _buildCategoryRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCategoryItem(context, 'Categories.png'),
        _buildCategoryItem(context, 'Favorites.png'),
        _buildCategoryItem(context, 'Gifts.png'),
        _buildCategoryItem(context, 'selling.png'),
      ],
    );
  }

  Widget _buildCategoryItem(BuildContext context, String imagePath) {
    return InkWell(
      onTap: () {
        if (imagePath == 'Categories.png') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CategoriesScreen()),
          );
        }
      },
      child: Image.asset(
        'assets/images/$imagePath',
        height: 81,
        width: 74,
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(title, style: black_bold)],
    );
  }

  Widget _buildProductRow(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildProductContainer('Smartphone.png', 'Smart phones', 160),
        SizedBox(width: width / 9),
        _buildProductContainer('Monitor.png', 'Monitors', 62),
      ],
    );
  }

  Widget _buildProductContainer(
      String imagePath, String label, double imageWidth) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 251,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 126, 126, 126).withOpacity(0.2),
              offset: const Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/$imagePath',
              height: 130,
              width: imageWidth,
            ),
            const SizedBox(height: 20),
            Text(label, style: black),
          ],
        ),
      ),
    );
  }
}
