import 'package:flutter/material.dart';
import 'package:real_esate_ui/all_export.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkNavigate();
    super.initState();
  }

  void checkNavigate()async{
    Future.delayed(Duration(milliseconds: 3000)).then((value) {
      Navigator.pushReplacementNamed(context, HomeScreenView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlutterLogo(size: 200,),),
    );
  }
}
