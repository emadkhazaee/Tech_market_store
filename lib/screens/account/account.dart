import 'package:flutter/material.dart';

// ignore: camel_case_types
class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('assets/images/pic.png'),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'James Warden',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Premium member',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: ListView(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const AccountListItem(title: 'Orders')),
                    const SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {},
                        child: const AccountListItem(
                            title: 'Returns and refunds')),
                    const SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {},
                        child: const AccountListItem(
                            title: 'Account information')),
                    const SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {},
                        child: const AccountListItem(
                            title: 'Security and settings')),
                    const SizedBox(height: 20.0),
                    InkWell(
                        onTap: () {},
                        child: const AccountListItem(title: 'Help')),
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

class AccountListItem extends StatelessWidget {
  final String title;

  const AccountListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
          bottomRight: Radius.circular(8.0),
        ),
      ),
      child: Text(title,
          style: const TextStyle(fontSize: 16.0, color: Colors.black)),
    );
  }
}
