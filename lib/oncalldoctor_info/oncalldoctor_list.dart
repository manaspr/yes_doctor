import 'package:flutter/material.dart';
import 'package:yes_doctor/doctor_card/card_main_page.dart';

class OnCallDList {
  OnCallDList({
    required this.name,
    required this.designation,
    required this.regno,
    required this.chamber,
    required this.forserial,
    required this.docimageurl,
    required this.func,
  });
  final String name;
  final String designation;
  final String regno;
  final String chamber;
  final String forserial;
  final String docimageurl;
  final void Function(BuildContext context) func;
}

List<OnCallDList> oncalldList = [
  OnCallDList(
    name: 'Arthi Biswas',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/12-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DoctorCard(
            name: "Arthi Biswas",
            phone: '01711125412',
            mail: 'arthi@gmail.com',
            address: 'Gopalganj Sador',
            imgurl: 'https://reqres.in/img/faces/12-image.jpg',
          ),
        ),
      );
    },
  ),
  OnCallDList(
    name: 'Bona Bairagee',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/7-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Bona Bairagee",
                  phone: '01711000000',
                  mail: 'bona@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/7-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Sajh Mandal',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/2-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Sajh Mandal",
                  phone: '01711000000',
                  mail: 'sajh@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/2-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Binu Bairagee',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/3-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Binu Bairagee",
                  phone: '01711000000',
                  mail: 'binu@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/3-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Amit Roy',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/4-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Amit Roy",
                  phone: '01711000000',
                  mail: 'amit@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/4-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Barna Biswas',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/5-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Barna Biswas",
                  phone: '01711000000',
                  mail: 'barna@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/5-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Tumpa Mandal',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/2-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Tumpa Mandal",
                  phone: '01711000000',
                  mail: 'tumpa@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/2-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Roddur Mandal',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/7-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Roddur Mandal",
                  phone: '01711000000',
                  mail: 'raddur@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/7-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Bimal Biswas',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/8-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Bimal Biswas",
                  phone: '01711000000',
                  mail: 'bimal@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/8-image.jpg',
                )),
      );
    },
  ),
  OnCallDList(
    name: 'Biplob Ahamed',
    designation: 'Medicine, General, DMCU',
    regno: '0000',
    chamber: 'Kristapara Gopalganj',
    forserial: '01788000001',
    docimageurl: 'https://reqres.in/img/faces/9-image.jpg',
    func: (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DoctorCard(
                  name: "Biplob Ahamed",
                  phone: '01711000000',
                  mail: 'biplob@gmail.com',
                  address: 'Gopalganj Sador',
                  imgurl: 'https://reqres.in/img/faces/9-image.jpg',
                )),
      );
    },
  ),
];
