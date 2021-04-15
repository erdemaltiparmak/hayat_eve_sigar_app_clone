import 'package:flutter/material.dart';
import 'package:hayat_eve_sigar/constants.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

double opacity = 0;
int _selectedIndex = 1;
final List screens = [
  Scaffold(),
  Scaffold(
    backgroundColor: kSplashBackgroundColor,
  ),
  Scaffold(),
  Scaffold(),
];

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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      "assets/images/drawerheader.jpg",
                    ),
                  ),
                  ListTile(
                    title: Text(drawerMenuItems[0].title),
                    leading: Icon(drawerMenuItems[0].icon),
                    onTap: () {
                      print("object");
                    },
                  ),
                  ListTile(
                    title: Text(drawerMenuItems[1].title),
                    leading: Icon(drawerMenuItems[1].icon),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: drawerMenuItems.length,
                                itemBuilder: (context, index) {
                                  while (index < drawerMenuItems.length - 2) {
                                    return ListTile(
                                      title: Text(
                                          drawerMenuItems[index + 2].title),
                                      leading:
                                          Icon(drawerMenuItems[index + 2].icon),
                                    );
                                  }
                                  return null;
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              elevation: 0,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped, // new

          backgroundColor: kSplashBackgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.blueGrey,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          iconSize: 28,
          elevation: 0,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        _selectedIndex == 0 ? kPrimaryColor : Colors.blueGrey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Icon(
                      Icons.home,
                      color: kSplashBackgroundColor,
                    ),
                  ),
                ),
                label: "Ana Sayfa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart_outlined), label: "Yoğunluk"),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: "Yakınlarım"),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                        color: _selectedIndex == 3
                            ? kPrimaryColor
                            : Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(
                        Icons.person,
                        color: kSplashBackgroundColor,
                      ),
                    )),
                label: "Hesabım"),
          ],
        ),
        body: Stack(
          children: [
            screens[_selectedIndex],
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
              fontWeight: FontWeight.w500,
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

  void onTabTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
