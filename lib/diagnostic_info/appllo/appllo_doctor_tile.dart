import 'package:flutter/material.dart';
import 'appllo_doctor_list.dart';

class AppolloListTile extends ListTile {
  AppolloListTile(ApplloDoctorList data, {Key? key})
      : super(
          key: key,
          leading: Image.network(
            data.dimageurl,
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          ),
          title: Text(data.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.designation),
              Text("Reg.No: ${data.regno}"),
              Text(data.time),
              Text('For Serial: ${data.forserial}')
            ],
          ),
        );
}
