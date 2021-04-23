import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        Navigator.pushReplacementNamed(context, "/home");
      });
    });
  }

  void setStateIfMounted(e) {
    if (mounted) setState(e);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: _purple.withOpacity(0.1),
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "assets/images/logo.png",
          height: 250.0,
          // width: 100.0,
        ),
      )),
    );
  }
}
