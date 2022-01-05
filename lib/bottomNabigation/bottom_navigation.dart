import 'package:flutter/material.dart';
import 'package:yes_doctor/etc_pages/chat.dart';
import 'package:yes_doctor/etc_pages/dashboard.dart';
import 'package:yes_doctor/etc_pages/profile.dart';
import 'package:yes_doctor/etc_pages/settings.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Settings(),
  ]; // to store nested tabs
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomLeft,
        //     end: Alignment.topRight,
        //     colors: [
        //       Color(0xFF7053CE),
        //       Color(0xFFBDA8F8),
        //     ],
        //   ),
        // ),
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
                    setState(() {
                      currentScreen = Dashboard();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()),
                      );
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0
                            ? Colors.deepPurpleAccent
                            : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: currentTab == 0
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
                    setState(() {
                      currentScreen = Chat();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Chat()),
                      ); // if user taps on this dashboard tab will be active
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.chat,
                        color: currentTab == 1
                            ? Colors.deepPurpleAccent
                            : Colors.grey,
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(
                          color: currentTab == 1
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
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
                    setState(() {
                      currentScreen = Profile();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      ); // if user taps on this dashboard tab will be active
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 2
                            ? Colors.deepPurpleAccent
                            : Colors.grey,
                      ),
                      Text(
                        'Profile',
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
                    setState(() {
                      currentScreen = Settings();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()),
                      ); // if user taps on this dashboard tab will be active
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.chat,
                        color: currentTab == 3
                            ? Colors.deepPurpleAccent
                            : Colors.grey,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: currentTab == 3
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
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
}
