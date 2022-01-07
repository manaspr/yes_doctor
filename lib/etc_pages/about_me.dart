import 'package:flutter/material.dart';
import 'package:yes_doctor/bottomNabigation/bottom_navigation.dart';

import '../my_home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    this.title,
    this.name,
    this.imgpath,
    this.mail,
    this.phone,
    this.middle,
    this.other,
  }) : super(key: key);

  final String? title;
  final String? name;
  final String? imgpath;
  final String? mail;
  final String? phone;
  final Widget? middle;
  final String? other;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: gradient,
        title: Text(title!),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF8058F5),
                  blurRadius: 15.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    10.0, // Move to right 10  horizontally
                    10.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imgpath!),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: <Widget>[
              titleSection(),
              middle!,
              const SizedBox(
                height: 30,
              ),
              contactSection(),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF8058F5),
        child: const Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavi(),
    );
  }

  /// Title Section
  Column titleSection() {
    return Column(
      children: <Widget>[
        Text(
          name!,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          other!,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Column contactSection() {
    return Column(
      children: <Widget>[
        Text(
          mail!,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          phone!,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
