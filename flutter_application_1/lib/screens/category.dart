import 'package:flutter/material.dart';

class categorypage extends StatefulWidget {
  const categorypage({super.key});

  @override
  State<categorypage> createState() => _categorypageState();
}

class _categorypageState extends State<categorypage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('All Categories'),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
              // backgroundColor: Colors.blue[800],
            ),
            body: const SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/circle1.jpeg'),
                        ),
                        Text('Top Offers'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/grocery.jpeg'),
                        ),
                        Text('Grocery'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/mobiles.jpeg'),
                        ),
                        Text('Mobiles'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/fashion.jpeg'),
                        ),
                        Text('Fashion'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/electronics.jpg'),
                        ),
                        Text('Electronics'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/images.jpg'),
                        ),
                        Text('Home'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/personal care.jpg'),
                        ),
                        Text('Personal Care'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/appliances.jpg'),
                        ),
                        Text('Appliances'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: AssetImage('asset/images/toys.jpg'),
                        ),
                        Text('Toys & Baby'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: AssetImage('asset/images/bedd.jpg'),
                        ),
                        Text('Furniture'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/hotel& flight.webp'),
                        ),
                        Text('Flights & Hotels'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 50,
                              backgroundImage:
                                  AssetImage('asset/images/insurance....png'),
                            ),
                            Text('Insurance'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/sports.images.webp'),
                        ),
                        Text('Sports'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/nutritions.jpeg'),
                        ),
                        Text('Nutrions & More'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/bikes&cars.jpg'),
                        ),
                        Text('Bikes & Cars'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/handbag.jpeg'),
                        ),
                        Text('Bags'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/meddd.jpeg'),
                        ),
                        Text('Medicines'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 50,
                          backgroundImage:
                              AssetImage('asset/images/home services.jpeg'),
                        ),
                        Text('Home Services'),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(children: [
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundImage:
                            AssetImage('asset/images/shampoo.jpeg'),
                      ),
                      Text('Hair Care'),
                    ])
                  ],
                ),
              ]),
            )));
  }
}
