import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hayat_eve_sigar/constants.dart';

import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSplashBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: kPrimaryColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 100),
          ),
          Column(
            children: [
              Container(
                height: 180,
                child: Image.asset("assets/images/hayatlogo.png"),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Hayat Eve Sığar",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 82,
            child: Image.asset("assets/images/sagliklogo.png"),
          )
        ],
      ),
    );
  }
}
