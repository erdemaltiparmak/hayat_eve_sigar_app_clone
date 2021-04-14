import 'package:flutter/material.dart';
import 'package:hayat_eve_sigar/constants.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

double opacity = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: appBar,
        onDrawerChanged: (x) {
          setState(() {
            opacity = x ? 0.3 : 0;
          });
        },
        backgroundColor: Colors.white,
        drawerScrimColor: Colors.transparent,
        drawer: Container(
          padding: EdgeInsets.only(
              top: statusBarHeight + appBar.preferredSize.height),
          width: MediaQuery.of(context).size.width / 1.37,
          child: Theme(
            data:
                Theme.of(context).copyWith(canvasColor: kSplashBackgroundColor),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Container(
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.only(top: -statusBarHeight),
                  ),
                ],
              ),
              // child: Column(

              //   children: [
              //     // Container(
              //     //   color: Colors.green,
              //     //   width: double.maxFinite,
              //     //   height: MediaQuery.of(context).size.height / 4.7,
              //     // )
              //   ],
              // ),
              elevation: 0,
            ),
          ), //write your drawer code
        ),
        body: Stack(
          children: [
            Container(
              color: kSplashBackgroundColor,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(opacity),
            ),
          ],
        ));
  }

  AppBar appBar = AppBar(
    shadowColor: kPrimaryColor,
    elevation: 0,
    backgroundColor: kPrimaryColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/appbarlogo.png",
          height: 32,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Hayat Eve Sığar",
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.4,
              fontWeight: FontWeight.w400,
              fontFamily: 'Schyler'),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Icon(Icons.people),
      )
    ],
  );
}
