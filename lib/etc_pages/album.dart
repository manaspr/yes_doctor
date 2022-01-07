import 'package:flutter/material.dart';
import 'package:yes_doctor/bottomNabigation/bottom_navigation.dart';
import '../my_home_page.dart';

class AlbumGp extends StatelessWidget {
  const AlbumGp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: gradient,
        title: const Text('Gopalganj Album'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/album_1.jpg"),
                      ),
                    ),

                    // child: Image.asset(
                    //   'assets/album_1.jpg',
                    //   height: 200,
                    //   width: 200,
                    // ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/album_2.jpg"),
                      ),
                    ),

                    // child: Image.asset(
                    //   'assets/album_1.jpg',
                    //   height: 200,
                    //   width: 200,
                    // ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/album_3.jpg"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/album_4.jpg"),
                      ),
                    ),

                    // child: Image.asset(
                    //   'assets/album_1.jpg',
                    //   height: 200,
                    //   width: 200,
                    // ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/album_5.jpg"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/redsapla.jpg"),
                      ),
                    ),

                    // child: Image.asset(
                    //   'assets/album_1.jpg',
                    //   height: 200,
                    //   width: 200,
                    // ),
                  ),
                ),
              ],
            ),
          ],
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
}
