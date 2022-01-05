import 'package:flutter/material.dart';
import 'package:yes_doctor/oncalldoctor_info/oncalldoctor_list.dart';
import 'package:yes_doctor/oncalldoctor_info/oncalldoctor_tile.dart';
import 'package:yes_doctor/page_design/page_scafold.dart';

class OnCallPage extends StatelessWidget {
  const OnCallPage({Key? key}) : super(key: key);

  final String title = 'On Phone Call';

  @override
  Widget build(BuildContext context) {
    return scaffold(title, _buildList());
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: oncalldList.length,
        itemBuilder: (BuildContext context, int index) {
          OnCallDList data = oncalldList[index];
          return GestureDetector(
            onTap: () {
              data.func(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                shadowColor: const Color(0xFF7053CE),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OnCallDListTile(data),
                ),
              ),
            ),
          );
        });
  }
}
