import 'package:flutter/material.dart';
import 'package:yes_doctor/diagnostic_info//diagnostic_tile.dart';
import 'package:yes_doctor/diagnostic_info//diagnostic_list.dart';
import 'package:yes_doctor/page_design/page_scafold.dart';

class DiagnosticPage extends StatelessWidget {
  const DiagnosticPage({Key? key, this.widget}) : super(key: key);

  final String title = 'Diagnostic Centers';
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return scaffold(title, _buildList());
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: allDiagnostics.length,
        itemBuilder: (BuildContext context, int index) {
          DiagnosticList data = allDiagnostics[index];
          return GestureDetector(
            onTap: () {
              data.func(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber[100],
                elevation: 8,
                shadowColor: Color(0xFF7053CE),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DiagnosticListTile(data),
                ),
              ),
            ),
          );
        });
  }
}
