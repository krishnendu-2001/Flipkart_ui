import 'package:flutter/material.dart';

import '../screens/accounts.dart';
import '../screens/cart.dart';
import '../screens/category.dart';
import '../screens/home.dart';
import '../screens/notification.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int myIndex = 0;

  final List<Widget> _screens = [
    homescreen(),
    categorypage(),
    notificationpage(),
    accountpage(),
    cartpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[myIndex],
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            type: BottomNavigationBarType.shifting,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black45),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined, color: Colors.black45),
                  label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none_outlined,
                      color: Colors.black45),
                  label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined,
                      color: Colors.black45),
                  label: 'Account'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel_sharp, color: Colors.black45),
                  label: 'Cart'),
            ]
          )
        );
  }

}
