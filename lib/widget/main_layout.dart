import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rekber/screens/main_layout/home/home.dart';
import 'package:rekber/screens/main_layout/kontak/kontak.dart';
import 'package:rekber/screens/main_layout/profile/profile.dart';
import 'package:rekber/screens/main_layout/riwayat/riwayat.dart';
import 'package:rekber/widget/data.dart';
// import 'package:persistent_bottom_nav_bar/nav_bar_styles/style_15_bottom_nav_bar.widget.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;
  List<Widget> _container = [
    new HomeScreen(),
    new RiwayatScreen(),
    new KontakScreen(),
    new ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: _currentIndex,
            children: _container,
          )),
          bottomNavigationBar: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 0,
                  blurRadius: 10,
                ),
              ],
            ),
            child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                currentIndex: _currentIndex,
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.home,
                      color: primary,
                      size: 18,
                    ),
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 18,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.history,
                      color: primary,
                      size: 18,
                    ),
                    icon: Icon(
                      Icons.history,
                      color: Colors.black,
                      size: 18,
                    ),
                    label: 'Riwayat',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.switch_account_sharp,
                      color: primary,
                      size: 18,
                    ),
                    icon: Icon(
                      Icons.switch_account_sharp,
                      color: Colors.black,
                      size: 18,
                    ),
                    label: 'Kontak',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.person,
                      color: primary,
                      size: 18,
                    ),
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 18,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            
          )),
    );
  }
}
