import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xff252f3a),
      appBar: AppBar(
        backgroundColor: Color(0xff56A632),
        toolbarHeight: 10,
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
                    color: Color(0xff56A632),
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
