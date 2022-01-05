import 'package:flutter/material.dart';
import 'diagnostic_list.dart';

class DiagnosticListTile extends ListTile {
  DiagnosticListTile(DiagnosticList data, {Key? key})
      : super(
          key: key,
          leading: Image.network(
            data.imageurl,
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          ),
          title: Text(data.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Address: ${data.address}"),
              Text("Mobile: ${data.phone}"),
              Text("Total Doctor: ${data.totalDoctor}"),
            ],
          ),
        );
}
