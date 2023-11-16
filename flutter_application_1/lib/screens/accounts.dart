import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/orders.dart';

class accountpage extends StatefulWidget {
  const accountpage({super.key});

  @override
  State<accountpage> createState() => _accountpageState();
}

class _accountpageState extends State<accountpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 240, 239, 239),
            appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFFFFFF),
                toolbarHeight: 100,
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hey! Krishnendu Babu',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(children: [
                        const Text(
                          'Explore',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 134, 127, 127)),
                        ),
                        //  SizedBox(width: 5,child: Text('Flipkart')),
                        const SizedBox(width: 5),
                        Container(
                          height: 50,
                          width: 100,
                          child: Image.asset(
                            'asset/images/flipkart.jpg',
                          ),
                        ),

                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'asset/images/plus.jpeg',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '>',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        )
                      ]),
                    ]),
                actions: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, bottom: 24, right: 20),
                    child: Container(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'asset/images/sc.jpeg',
                            height: 20,
                            width: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '711',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 90,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color.fromRGBO(241, 237, 237, 1)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ]),
            body: SingleChildScrollView(
                child: Column(children: [
              const SizedBox(
                height: 20,
                width: 30,
              ),
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const orderspage(),
                    ));
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 218, 210, 210)),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(
                            'asset/images/box.png',
                            color: Colors.blue[800],
                          ),
                          const SizedBox(width: 10),
                          const Text('Orders')
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 70),
                Container(
                  height: 100,
                  width: 200,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 218, 210, 210)),
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'asset/images/favorite.png',
                          color: Colors.blue[800],
                        ),
                        const SizedBox(width: 10),
                        const Text('Wishlist')
                      ],
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 200,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 218, 210, 210)),
                    child: Center(
                        child: Row(
                      children: [
                        Image.asset(
                          'asset/images/giftbox.png',
                          color: Colors.blue[800],
                        ),
                        const SizedBox(width: 10),
                        const Text('Coupons')
                      ],
                    )),
                  ),
                  const SizedBox(width: 70),
                  Container(
                    height: 100,
                    width: 200,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 218, 210, 210)),
                    child: Center(
                        child: Row(
                      children: [
                        Image.asset(
                          'asset/images/headset.png',
                          color: Colors.blue[800],
                        ),
                        const SizedBox(width: 10),
                        const Text('Help Center')
                      ],
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                color: Colors.white,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("Credit Options"),
                      ),
                      ListTile(
                        leading: Icon(Icons.money_rounded),
                        title: Text('Flipkart Pay Later'),
                        subtitle: Text(
                            "complete application & get 500* Rs gift card"),
                        trailing: Text('>'),
                      ),
                      ListTile(
                        leading: Icon(Icons.check_box_outline_blank_sharp),
                        title: Text(
                          'Flipkart Axis Bank Credit Card',
                        ),
                        trailing: Text('>'),
                      ),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Center(
                    child: Image.asset(
                  'asset/images/levelup.jpeg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                )),
              ),
              Container(
                //   child: Title(color:Colors.grey,
                // child: Text('Complete 1st order and get Extra 3% off on next order')),),

                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('Level Up and win rewards worth Rs.10000'),
                      subtitle:
                          Text('Only 1 more tasks to complete this level'),
                      trailing: Text('>'),
                    )
                  ],
                ),
              ),
              Container(
                  height: 300,
                  color: Colors.white,
                  child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text("Account Setting"),
                        ),
                        ListTile(
                          leading: Icon(Icons.star_border_rounded),
                          title: Text('Flipkart Plus'),
                          trailing: Text('>'),
                        ),
                        ListTile(
                          leading: Icon(Icons.edit_rounded),
                          title: Text(
                            'Edit profile',
                          ),
                          trailing: Text('>'),
                        ),
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text(
                            'Select Language',
                          ),
                          trailing: Text('>'),
                        ),
                        ListTile(
                          leading: Icon(Icons.edit_notifications),
                          title: Text(
                            'Notification Setting',
                          ),
                          trailing: Text('>'),
                        ),
                      ])),
              const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.white,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("My Activity"),
                      ),
                      ListTile(
                        leading: Icon(Icons.note_alt_outlined),
                        title: Text('Reviews'),
                        trailing: Text('>'),
                      ),
                      ListTile(
                        leading: Icon(Icons.question_answer),
                        title: Text(
                          'Questions & Answers',
                        ),
                        trailing: Text('>'),
                      ),
                    ]),
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.white,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("Earn With Flipkart"),
                      ),
                      ListTile(
                        leading: Icon(Icons.star_border_purple500_sharp),
                        title: Text('Flipkart Creator Studio'),
                        trailing: Text('>'),
                      ),
                      ListTile(
                        leading: Icon(Icons.card_giftcard),
                        title: Text(
                          'Sell on Flipkart',
                        ),
                        trailing: Text('>'),
                      ),
                    ]),
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.white,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("Feedback & Information"),
                      ),
                      ListTile(
                        leading: Icon(Icons.library_books),
                        title: Text('Terms,Policies and Licences'),
                        trailing: Text('>'),
                      ),
                      ListTile(
                        leading: Icon(Icons.question_mark_sharp),
                        title: Text(
                          ' Browse FAQs',
                        ),
                        trailing: Text('>'),
                      ),
                    ]),
              ),
              const SizedBox(height: 20),
              Container(
                  height: 200,
                  width: 1400,
                  color: const Color.fromARGB(255, 216, 213, 213),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                          height: 50,
                          width: 900,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'Log Out',
                              style: TextStyle(color: Colors.blue),
                            ),
                          )),
                    ),
                  )),
            ]))));
  }
}
