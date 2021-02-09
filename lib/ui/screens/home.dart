import 'package:flutter/material.dart';
import 'package:real_esate_ui/all_export.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool fav = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Header(),
              HomeBody(),
            ],
          ),
        ),
      ),
    );
  }
}
