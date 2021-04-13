import "package:flutter/material.dart";
import 'package:hayat_eve_sigar/screens/splash_screen.dart';

void main() => runApp(HayatEveSigar());

class HayatEveSigar extends StatefulWidget {
  HayatEveSigar({Key key}) : super(key: key);

  @override
  _HayatEveSigarState createState() => _HayatEveSigarState();
}

class _HayatEveSigarState extends State<HayatEveSigar> {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/hayatlogo.png"), context);
    precacheImage(AssetImage("assets/images/sagliklogo.png"), context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
