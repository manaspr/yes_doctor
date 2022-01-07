import 'package:flutter/material.dart';
import 'package:yes_doctor/etc_pages/about_me.dart';
import 'package:yes_doctor/etc_pages/album.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(
                          title: "Service Area",
                          name: 'Stay Update!',
                          other: '',
                          imgpath: 'assets/redsapla.jpg',
                          middle: Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.00),
                            child: Text(
                                'Gopalganj is a town in Gopalgonj District in the Dhaka Division of Bangladesh. It serves as the headquarters of Gopalgonj District and Gopalganj Sadar Upazila.'),
                          ),
                          mail: 'Mail: yesdoctor@gmail.com',
                          phone: 'Mobile: 01711000000',
                        ),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.map,
                        color: Colors.grey,
                      ),
                      Text(
                        'Aria',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.call,
                        color: Colors.grey,
                      ),
                      Text(
                        'Listing',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            // Right Tab bar icons

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
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
                    ); // if user taps on this dashboard tab will be active
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(
                        Icons.people,
                        color: Colors.grey,
                      ),
                      Text(
                        'Auther',
                        style: TextStyle(
                          color: currentTab == 2
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AlbumGp(),
                      ),
                    ); // if user taps on this dashboard tab will be active
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.album,
                        color: Colors.grey,
                      ),
                      Text(
                        'Album',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
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
