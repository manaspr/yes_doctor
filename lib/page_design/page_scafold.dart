import 'package:flutter/material.dart';
import 'package:yes_doctor/bottomNabigation/bottom_navigation.dart';
import '../my_home_page.dart';

class scaffold extends StatelessWidget {
  const scaffold(this.title, this.widget);
  final String? title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: gradient,
        title: Text(title!),
      ),
      body: Container(
        child: widget,
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
}
