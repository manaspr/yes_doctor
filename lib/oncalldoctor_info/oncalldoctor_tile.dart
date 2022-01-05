import 'package:flutter/material.dart';
import 'oncalldoctor_list.dart';

class OnCallDListTile extends ListTile {
  OnCallDListTile(OnCallDList data, {Key? key})
      : super(
          key: key,
          leading: Image.network(
            data.docimageurl,
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data.name),
              const Icon(Icons.video_call, color: Colors.green),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.designation),
              Text("Reg.No: ${data.regno}"),
              Text("Chamber: ${data.chamber}"),
              Text('For Serial: ${data.forserial}')
            ],
          ),
        );

  // CircleAvatar(
  // radius: 40.0,
  // backgroundImage: NetworkImage(data.docimageurl),
  // backgroundColor: Colors.transparent,
  // ),
}
