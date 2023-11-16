import 'package:flutter/material.dart';

class orderspage extends StatefulWidget {
  const orderspage({super.key});

  @override
  State<orderspage> createState() => _orderspageState();
}

class _orderspageState extends State<orderspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Orders'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.blue,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 80,
              width: 1000,
              child: ListTile(
                leading: Container(
                  height: 35,
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(255, 218, 210, 210),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: 'Search for products',
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                title: const Icon(Icons.photo_filter_outlined),
                trailing: const Text('fdsfds'),
                // : Text('Filter'),
              ),
            ),
            Container(
              color: Colors.white,
              height: 80,
              width: 1000,
              child: ListTile(
                leading: Image.asset(
                  'asset/images/headset.jpg',
                  height: 80,
                  width: 150,
                ),
                title: const Text('Delivered on Oct 15'),
                subtitle: const Text('boAt Rockerz 510(Super Extra Bass'),
                trailing: const Text('>'),
              ),
            ),
            Container(
              color: Colors.white,
              height: 80,
              width: 1000,
              child: ListTile(
                leading: Image.asset(
                  'asset/images/pumashoe.jpeg',
                  height: 80,
                  width: 150,
                ),
                title: const Text('Delivered on Oct 20'),
                subtitle: const Text('Mayze Classic Wns Sneakers'),
                trailing: const Text('>'),
              ),
            ),
            const Divider(
              height: 5,
              color: Color.fromARGB(95, 124, 115, 115),
            ),
            Container(
              color: Colors.white,
              height: 80,
              width: 1000,
              child: ListTile(
                leading: Image.asset(
                  'asset/images/louis.jpeg',
                  height: 80,
                  width: 150,
                ),
                title: const Text('Delivered on Nov 2'),
                subtitle: const Text('Men Brown Genuine Leather Wallet'),
                trailing: const Text('>'),
              ),
            ),
            Container(
              color: Colors.white,
              height: 80,
              width: 1000,
              child: ListTile(
                leading: Image.asset(
                  'asset/images/titan.webp',
                  height: 80,
                  width: 150,
                ),
                title: const Text('Delivered on Nov 5'),
                subtitle: const Text('Karishma Analog Watch'),
                trailing: const Text('>'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
