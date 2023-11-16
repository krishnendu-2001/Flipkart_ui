import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;

  List<Map<String, dynamic>> images = [
    {"id": 1, "image_path": 'assets/images/offer-image1.jpg'},
    {"id": 2, "image_path": 'assets/images/offer-image2.jpg'},
    {"id": 3, "image_path": 'assets/images/offer-image3.jpg'},
    {"id": 4, "image_path": 'assets/images/offer-image4.jpg'},
    {"id": 5, "image_path": 'assets/images/offer-image5.jpg'},
  ];

  final CarouselController _carouselController = CarouselController();
  int indexnum = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const SizedBox(
        width: 10,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue[800],
              ),
              child: Image.asset(
                "asset/images/fffff.jpeg",
                height: 70,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 188, 190, 192),
              ),
              child: Image.asset(
                "asset/images/flipkart-grocery-coupons-offers-today.jpeg",
                fit: BoxFit.cover,
              ),
            )
            // child:Image.asset('', Text(
            //   'Grocery',
            //   style: TextStyle(color: Colors.white),
            // ),)
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              const Text(
                'Brand Mall',
                style: TextStyle(fontSize: 10),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Container(
                height: 35,
                width: 300,
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
            ],
          ),
        ],
      ),
      const SizedBox(height: 10),
      Container(
        width: MediaQuery.of(context).size.width,
        // height: h / 4,
        // width:1200,
        height: 270,
        color: Colors.amber,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset("asset/images/offer-image1.jpg"),
              Image.asset("asset/images/offer-image2.jpg"),
              Image.asset("asset/images/offer-image3.jpg"),
              Image.asset("asset/images/offer-image4.jpg"),
              Image.asset("asset/images/offer-image5.jpg")
            ],
          ),
        ),
      ),
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/coin.jpeg',
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  'Super coin',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
              const SizedBox(width: 30),
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/coupons.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'Coupons',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
              const SizedBox(width: 30),
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/recharge.jpeg',
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  'Recharge',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
              const SizedBox(width: 30),
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/game zone.webp',
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  'Game Zone',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
              const SizedBox(width: 30),
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/credit.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  'Credit',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
              // SizedBox(width: 30),
              // Column(children: [
              //   CircleAvatar(
              //     backgroundColor: Color.fromRGBO(255, 255, 255, 0.788),
              //     radius: 30,
              //     child: Image.asset(
              //       '',
              //       width: 40,
              //       height: 40,
              //     ),
              //   ),
              //   Text(
              //     'Group Buy',
              //     style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              //   )
              // ]),
              const SizedBox(width: 30),
              Column(children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 0.788),
                  radius: 30,
                  child: Image.asset(
                    'asset/images/camera image.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                const Text(
                  'Camera',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ]),
            ]),
          ),
        ],
      ),
      const SizedBox(height: 50),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 150,
            //     width: 118,
            //     child: Align(
            //       alignment: Alignment.topCenter,
            //       child: Image.asset(
            //         'asset/images/istockphoto-1352176789-1024x1024.jpg',
            //         height: 50,
            //         width: 250,
            //         alignment: Alignment.topCenter,
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 118,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 188,
                    child: Column(
                      children: [
                        Image.asset(
                          'asset/images/laptop images.jpeg',
                          // height: MediaQuery.of(context).size.height,
                          // width: MediaQuery.of(context).size.width,
                          // alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                        const Text('Laptop Deals'),
                        const Text('From ₹20,000')
                      ],
                    ),
                  ),
                  // Text('laptop deals'),
                  // Text('from')
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            // Container(
            //     height: 150,
            //     width: 118,
            //     color: const Color.fromARGB(255, 86, 244, 54),
            //     child: Image.asset(
            //       'asset/images/flower.images.avif',
            //       height: 50,
            //       width: 188,
            //       alignment: Alignment.topCenter,
            //     )),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 118,
              //  color: Colors.red,
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/backpacks.webp',
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                  const Text("Backpacks"),
                  const Text("50% off")
                ],
              ),
            ),

            const SizedBox(
              width: 8,
            ),

            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 118,
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/mixer.webp',
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                  const Text('Mixer Grinder'),
                  const Text('Shop Now')
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 118,
              child: Column(
                children: [
                  Image.asset(
                    'asset/images/SET022_1_1024x1024.webp',
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,
                  ),
                  const Text('Jewellery'),
                  const Text('70% off')
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      const Text(
          style: TextStyle(
            fontSize: 30,
          ),
          'Recently Viewed Stores'),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Center(
              child: Container(
                height: 150,
                width: 100,
                color: const Color.fromARGB(60, 155, 150, 150),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'asset/images/lipstick image.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 8,
            // ),
            // Container(
            //   height: 150,
            //   width: 100,
            //   color: Colors.amber,
            //   child: Image.asset(
            //     'build/flutter_assets/asset/images/sunscreen.avif',
            //     fit: BoxFit.fill,
            //   ),
            // ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 100,
              color: Colors.amber,
              child: Image.asset(
                'asset/images/perfume .image.jpg',
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 150,
              width: 100,
              color: Colors.amber,
              child: Image.asset(
                'asset/images/footwear.image.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
                height: 150,
                width: 100,
                color: Colors.amber,
                child: Image.asset(
                  'asset/images/furniture.image.png',
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              width: 8,
            ),
            Container(
                height: 150,
                width: 100,
                color: Colors.amber,
                child: Image.asset(
                  'asset/images/designer-dress.jpg',
                  fit: BoxFit.fill,
                )),
          ],
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      const Text(
          style: TextStyle(
            fontSize: 30,
          ),
          'Sponsored'),
      Row(children: [
        const SizedBox(
          width: 10,
        ),
        Container(
            height: 150,
            width: 118,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.black),
            child: Image.asset('asset/images/gym.jpg', fit: BoxFit.fill)),
        const SizedBox(
          width: 8,
        ),
        Container(
            height: 150,
            width: 118,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.amber),
            child: Image.asset('asset/images/boat.jpg', fit: BoxFit.fill)),
        const SizedBox(
          width: 8,
        ),
        Container(
            height: 150,
            width: 118,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,
            ),
            child: Image.asset(
              'asset/images/lip liner.webp',
              fit: BoxFit.fill,
            )),
      ]),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 150,
            width: 118,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.amber),
            child: Image.asset('asset/images/mirror.webp', fit: BoxFit.fill),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
              height: 150,
              width: 118,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.amber,
              ),
              child: Image.asset(
                'asset/images/jar.jpg',
                fit: BoxFit.fill,
              )),
          const SizedBox(
            width: 8,
          ),
          Container(
              height: 150,
              width: 118,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.amber,
              ),
              child: Image.asset(
                'asset/images/cargo.jpg',
                fit: BoxFit.fill,
              ))
        ],
      )
    ])));
  }
}
