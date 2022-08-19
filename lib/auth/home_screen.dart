import 'package:flutter/material.dart';
import 'package:foodapp/auth/my_drawer.dart';
import 'package:foodapp/auth/single_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            ' Home ',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.amber[300],
              child: const Icon(
                Icons.search,
                size: 15,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.amber[300],
                child: const Icon(
                  Icons.shop,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://5.imimg.com/data5/ST/AL/FE/ANDROID-103385991/all-type-of-farm-fresh-vegetables-500x500-jpg-500x500.jpg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 580, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: const Text(
                                'Vegi',
                                style: TextStyle(shadows: [
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                      offset: Offset(3, 3)),
                                ], fontSize: 20),
                              ),
                            ),
                          ),
                          const Text(
                            '30 % OFF',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'On all vegetables products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Herbs Seasonings'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(
                      onTap: () {},
                      productName: "apple",
                      productImage:
                          'https://image.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Fresh Fruits'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(
                      onTap: () {},
                      productName: "apple",
                      productImage:
                          'https://image.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-1727544364.jpg'),
                ],
              ),
            ),
          ]),
        ));
  }
}
