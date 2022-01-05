import 'package:flutter/material.dart';

class DrawerPaint extends StatelessWidget {
  const DrawerPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF7053CE),
                  Color(0xFFBDA8F8),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Yes Doctor',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Your personal Health Assistant',
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 7),
                //   child: CircleAvatar(
                //     backgroundImage: AssetImage('assets/sajh.jpg'),
                //     maxRadius: 40,
                //   ),
                // ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.app_registration),
            title: const Text('Registration'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Service Area'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Call For Listing'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_business),
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
