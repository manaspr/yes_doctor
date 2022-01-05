import 'package:flutter/material.dart';
import 'appllo/appllo_doctor_page.dart';

class DiagnosticList {
  DiagnosticList({
    required this.name,
    required this.address,
    required this.phone,
    required this.totalDoctor,
    required this.func,
    required this.imageurl,
  });

  final String name;
  final String address;
  final String phone;
  final String totalDoctor;
  final String imageurl;
  final void Function(BuildContext context) func;
}

List<DiagnosticList> allDiagnostics = [
  DiagnosticList(
    name: 'Appllo Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/a/a5/McMasterUMedical.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Appllo Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Jononi Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/f/f4/Royal_Brompton_Hospital-geograph-2105200.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Jononi Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Sondhani Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/6/6c/Starship_Children%27s_Health_Auckland.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Sondhani Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Jonaki Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/0/06/Lehigh-Valley-Hospital.x.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Jonaki Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Imparial Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/f/f4/Royal_Brompton_Hospital-geograph-2105200.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Imparial Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Appllo Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/6/6d/AIIMS_central_lawn.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Appllo Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Sapno Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/0/06/Lehigh-Valley-Hospital.x.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Sapno Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'Square Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/6/6d/AIIMS_central_lawn.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'Square Diagnostic',
                )),
      );
    },
  ),
  DiagnosticList(
    name: 'LabAid Diagnostic',
    address: 'Gopalganj, Kristan Para',
    phone: '01788000001',
    totalDoctor: '30',
    imageurl:
        'https://upload.wikimedia.org/wikipedia/commons/0/06/Lehigh-Valley-Hospital.x.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const ApplloDoctorPage(
                  title: 'LabAid Diagnostic',
                )),
      );
    },
  ),
];
