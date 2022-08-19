import 'package:flutter/material.dart';

class SingleProducts extends StatelessWidget {
  SingleProducts(
      {Key? key,
      required this.productImage,
      required this.productName,
      required this.onTap})
      : super(key: key);

  final String productImage;
  final String productName;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 200,
            width: 177,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    child: Image.network(productImage),
                  ),
                ),
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
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
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
                                ),
                              ),
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
                                    Text('1',
                                        style: TextStyle(color: Colors.amber)),
                                    Icon(
                                      Icons.add,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
