import 'package:flutter/material.dart';
import 'package:real_esate_ui/core/model/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDefaultColor,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
          Text('Real Estate UI',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0)),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://scontent.fpnh10-1.fna.fbcdn.net/v/t1.0-9/101716832_2779781565463978_2961489908598931490_o.jpg?_nc_cat=102&_nc_sid=09cbfe&_nc_ohc=vPU1zpn4H1YAX-v4N_V&_nc_ht=scontent.fpnh10-1.fna&oh=783b0c87ded95f0171a84250dd1e07f8&oe=5F814277'),
          ),
        ],
      ),
    );
  }
}
