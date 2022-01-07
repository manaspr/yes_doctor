import 'package:flutter/material.dart';
import 'package:yes_doctor/bottomNabigation/bottom_navigation.dart';
import '../my_home_page.dart';
import 'CustomPainer.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {Key? key, this.name, this.phone, this.mail, this.address, this.imgurl})
      : super(key: key);

  final String? imgurl;
  final String? name;
  final String? phone;
  final String? mail;
  final String? address;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
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
        ),
        title: Text(name!),
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          height: height * 0.7,
          width: width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF7053CE),
                Color(0xFFBDA8F8),
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CustomPaint(
              size: Size(width, height),
              painter: CardCustomPainter(),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Image.asset(
                      'assets/img.png',
                      color: Colors.purpleAccent.withOpacity(0.3),
                      width: width * 0.7,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Image.asset(
                      'assets/2.png',
                      width: width * 0.7,
                      color: Colors.white70,
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: CircleAvatar(
                        radius: 55.0,
                        backgroundImage: NetworkImage(imgurl!),
                        backgroundColor: Colors.transparent,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        name!,
                        style: TextStyle(
                          color: Colors.deepPurple[700],
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      detailWidget(
                        icon: Icons.phone,
                        text: phone,
                      ),
                      detailWidget(
                        icon: Icons.email,
                        text: mail,
                      ),
                      detailWidget(
                        icon: Icons.location_on,
                        text: address,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
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

  Widget detailWidget({IconData? icon, String? text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.white70,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
