import 'package:flutter/material.dart';
import 'package:yes_doctor/page_design/page_scafold.dart';

import 'appllo_doctor_list.dart';
import 'appllo_doctor_tile.dart';

class ApplloDoctorPage extends StatelessWidget {
  const ApplloDoctorPage({Key? key, this.widget, this.title}) : super(key: key);

  final String? title; //Appllo Diagnostic
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return scaffold(title, _buildList());
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: applloDoctorList.length,
        itemBuilder: (BuildContext context, int index) {
          ApplloDoctorList data = applloDoctorList[index];
          return GestureDetector(
            onTap: () {
              // data.func(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                elevation: 8,
                shadowColor: const Color(0xFF7053CE),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppolloListTile(data),
                ),
              ),
            ),
          );
        });
  }
}
