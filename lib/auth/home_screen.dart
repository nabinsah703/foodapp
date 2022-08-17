import 'package:flutter/material.dart';
import 'package:foodapp/auth/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 2,
          child: Image.network(
            "https://p.kindpng.com/picc/s/241-2414872_holy-basil-png-file-tulasi-leaf-transparent-png.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fresh Basil',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '50\$/50 Gram',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular((8))),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 2,
                            ),
                            Expanded(
                                child: Text(
                              '50 Gram',
                              style: TextStyle(fontSize: 12),
                            )),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(width: 3),
                  Expanded(
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular((8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.remove, color: Colors.amber),
                          Text('1', style: TextStyle(color: Colors.amber)),
                          Icon(
                            Icons.add,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        )
      ]),
    );
  }

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
        child: ListView(
          children: [
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
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
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
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
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
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
