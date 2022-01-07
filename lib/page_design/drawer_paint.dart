import 'package:flutter/material.dart';
import 'package:yes_doctor/etc_pages/about_me.dart';
import 'package:yes_doctor/etc_pages/album.dart';

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
                  'Your personal Health Assistant at Gopalganj',
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
            leading: const Icon(Icons.map),
            title: const Text('Service Area'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(
                    title: "Service Area",
                    name: 'Gopalganj, Dhaka',
                    other: '',
                    imgpath: 'assets/redsapla.jpg',
                    middle: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.00),
                      child: Text(
                          'We are now serving only Gopalganj thana. Gopalganj is a town in Gopalgonj District in the Dhaka Division of Bangladesh. It serves as the headquarters of Gopalgonj District and Gopalganj Sadar Upazila.'),
                    ),
                    mail: 'Mail: yesdoctor@gmail.com',
                    phone: 'Mobile: 01711000000',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Call For Listing'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(
                    title: "Call For Listing",
                    other: '',
                    name: "Contact Us",
                    imgpath: 'assets/contact.jpg',
                    middle: Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.00),
                      child: Text(
                          'We are always here to happily help you. If you are a doctor or owener of of a diagnotic center this is for you. Just call us or drop a massage for listing'),
                    ),
                    mail: 'Mail: yesdoctor@gmail.com',
                    phone: 'Mobile: 01711000000',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.album),
            title: const Text('Gopalganj Album'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlbumGp(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Auther'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    title: "About Me",
                    name: 'Manas Mandal',
                    other: 'Freelancer',
                    imgpath: 'assets/profile.jpg',
                    middle: infoSection(),
                    mail: 'Mail: abcd@gmail.com',
                    phone: 'Mobil: 01711000000',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Info Section
  Container infoSection() {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _infoCell(title: 'Projects', value: '8000+'),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey,
          ),
          _infoCell(title: 'Hourly Rate', value: "\$65"),
          Container(
            width: 1,
            height: 40,
            color: Colors.grey,
          ),
          _infoCell(title: 'Location', value: 'Gopalganj'),
        ],
      ),
    );
  }

  /// Info Cell
  Column _infoCell({String? title, String? value}) {
    return Column(
      children: <Widget>[
        Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          value!,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
