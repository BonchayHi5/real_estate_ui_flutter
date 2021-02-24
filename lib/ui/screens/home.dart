import 'package:flutter/material.dart';
import 'package:real_esate_ui/all_export.dart';

class Home extends StatelessWidget {
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
