import 'package:flutter/material.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 239, 239),
        appBar: AppBar(
          title: const Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Flipkart(2)',
                ),
                Tab(
                  text: 'Grocery (1)',
                )
              ]),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)))),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              'Deliver to: ',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Krishnendu Babu',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          'kumblanickal(h),pulpally,wayanad',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 170, 170, 170)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Change')),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    cartItems(context,
                        image: 'asset/images/straightner.png',
                        item_name: 'Philips BHS393/40 Straightener with...',
                        item_detail: 'Titanium, Ceramic',
                        offer_perc: '- 82%',
                        prev_rate: '₹10,000',
                        curr_rate: '₹2,999',
                        del_date: 'Delivery by Fri Sep 30 |'),
                    const SizedBox(
                      height: 10,
                    ),
                    cartItems(context,
                        image: 'asset/images/mac.image.jpg',
                        item_name: 'Apple 2022 MacBook...',
                        item_detail: '8GB RAM, 256GB SSD  ',
                        offer_perc: '-20%',
                        prev_rate: '₹1,19,900',
                        curr_rate: '₹1,06,990',
                        del_date: 'Delivery by 6 sep |'),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, left: 15),
                            child: Text(
                              'Price Details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          priceDetails(
                              txt1: 'Price (2 item)', txt2: '₹114,919'),
                          const SizedBox(
                            height: 15,
                          ),
                          priceDetails(
                              txt1: 'Discount',
                              txt2: '₹9,999',
                              Color: Colors.green),
                          const SizedBox(
                            height: 15,
                          ),
                          priceDetails(
                              txt1: 'Delivery Charges',
                              txt2: 'Free Delivery',
                              Color: Colors.green),
                          const Divider(thickness: 2),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 5, right: 15, left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Amount',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '₹104,920',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(top: 10, left: 15, bottom: 15),
                            child: Text(
                              'You will save ₹9,999 on this order',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 15, left: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                Text(
                                  '₹114,919',
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                  '₹109,989',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Place order'),
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.amber)),
                            )
                          ],
                        ),
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

  Padding priceDetails({
    Color? Color,
    required String txt1,
    required String txt2,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt1,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            txt2,
            style: TextStyle(fontSize: 15, color: Color),
          )
        ],
      ),
    );
  }

  Container cartItems(BuildContext context,
      {required String image,
      required String item_name,
      required String item_detail,
      required String offer_perc,
      required String prev_rate,
      required String curr_rate,
      required String del_date}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item_name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(item_detail),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text('Seller:RetailNet'),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'asset/images/plus.jpeg',
                            height: 20,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 25),
            child: Row(
              children: [
                OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Qty: 1  ',
                      style: TextStyle(color: Colors.black),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          offer_perc,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.green),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          prev_rate,
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          curr_rate,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '5 offers applied - 21 offers available',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 5),
            child: Row(
              children: [
                Text(del_date),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Free Delivery',
                  style: TextStyle(color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                containerButtons(context,
                    image: 'asset/images/delete.image.jpeg', txt: 'Remove'),
                containerButtons(context,
                    image: 'asset/images/dowload.image.jpg',
                    txt: 'Save for later'),
                containerButtons(context,
                    image: 'asset/images/spark.image.jpeg', txt: 'Buy now')
              ],
            ),
          )
        ],
      ),
    );
  }

  Container containerButtons(BuildContext context,
      {required String image, required String txt}) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
              right: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)))),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Image.asset(
            image,
            height: 20,
            color: const Color.fromARGB(255, 88, 88, 88),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            txt,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 88, 88, 88)),
          )
        ],
      ),
    );
  }
}
