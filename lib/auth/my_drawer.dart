import 'package:flutter/material.dart';

Widget listTile({required IconData icon, required String title}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 32,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcom Guest',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      const SizedBox(height: 7),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: Icons.home_outlined, title: 'Home'),
            listTile(icon: Icons.shop_outlined, title: 'Review Cart'),
            listTile(icon: Icons.person_outlined, title: 'My Profile'),
            listTile(
                icon: Icons.notification_add_outlined, title: 'Notification'),
            listTile(icon: Icons.star_outlined, title: 'Rating & Preview'),
            listTile(icon: Icons.favorite_outlined, title: 'Wishlist'),
            listTile(icon: Icons.copy_outlined, title: 'Raise a Complaint'),
            listTile(icon: Icons.format_quote_outlined, title: 'FAQs'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Contact Support:',
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text('Call us:', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Text('+977-9819621410',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Email us:',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(width: 15),
                        Text('nabinsah703@gmail.com',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
