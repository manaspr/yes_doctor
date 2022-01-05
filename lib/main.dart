import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() => runApp(const YesDoctor());

class YesDoctor extends StatelessWidget {
  const YesDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yes Doctor',
      home: MyHomePage(),
    );
  }
}
