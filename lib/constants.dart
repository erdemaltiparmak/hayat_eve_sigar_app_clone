import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color kPrimaryColor = Color(0xff63c700);
final Color kSplashBackgroundColor = Color(0xff252f3a);

class DrawerMenuItem {
  final IconData icon;
  final String title;

  DrawerMenuItem({@required this.icon, @required this.title});
}

List<DrawerMenuItem> drawerMenuItems = [
  DrawerMenuItem(icon: Icons.qr_code, title: "Karekodlarım"),
  DrawerMenuItem(icon: Icons.bar_chart, title: "Güncel İstatistikler"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Sağlık Bakanlığı"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "ALO 182 MHRS"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "E-Nabız"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Korona Önlem"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Türkiye'ye Giriş Formu"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "İlacımı Kontrol Et"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Maskemi Kontrol Et"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Gizlilik Politikası"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Yardım"),
  DrawerMenuItem(icon: FontAwesomeIcons.globe, title: "Hakkımızda"),
];
