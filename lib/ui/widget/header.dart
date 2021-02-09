import 'package:flutter/material.dart';
import 'package:real_esate_ui/core/model/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      color: kDefaultColor,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 16.0, right: 16.0, bottom: 16.0, top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'Real Estate UI',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, ProfileScreenView),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://staticg.sportskeeda.com/editor/2020/09/9f615-15992439400294-800.jpg'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
