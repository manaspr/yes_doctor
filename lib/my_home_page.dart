import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yes_doctor/page_design/drawer_paint.dart';
import 'bottomNabigation/bottom_navigation.dart';
import 'main_button_page/diagnostic_page.dart';
import 'main_button_page/on_call_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3E0FF),
      drawer: const DrawerPaint(),
      appBar: AppBar(
        // backgroundColor: Colors.lightGreen,
        flexibleSpace: gradient,
        title: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.graphic_eq_rounded,
                color: Colors.white,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Yes Doctor',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Colors.blueGrey)),
              textScaleFactor: 3,
            ),
            SizedBox(
              height: 250,
              width: 250,
              child: SvgPicture.asset('assets/doctor.svg'),
            ),
            const SizedBox(height: 20),

            //-------------Main_2_Button-------------------

            ElevatedButton(
              style: raisedButtonStyle,
              child: Text(
                'Diagnostic Center',
                style: textStyle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DiagnosticPage()),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text(
                'On Phone Call',
                style: textStyle,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OnCallPage()),
                );
              },
              style: raisedButtonStyle,
            ),
          ],
        ),
      ),
      // extendBody: true,
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

//------------------ElevatedButton_Style-----------------------------
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: const Color(0xFF8058F5), //(0xFF7FEFA9), //Colors.grey[300],
  fixedSize: const Size(200, 30),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);

//-------------------Button_Text_style----------------

TextStyle textStyle = GoogleFonts.poppins(
    fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold);

//-------------------------Gradient_box_decoration-----------------------

Widget gradient = Container(
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
);
//--------------------------------
