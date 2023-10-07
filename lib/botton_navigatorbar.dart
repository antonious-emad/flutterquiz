import 'package:carousel_slider/carousel_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/providers/settings_provider.dart';
import 'package:quiz/screen2.dart';
import 'package:quiz/screen3.dart';

class BottonNavigator extends StatefulWidget {
  BottonNavigator({Key? key}) : super(key: key);

  @override
  _BottonNavigatorState createState() => _BottonNavigatorState();
}

class _BottonNavigatorState extends State<BottonNavigator> {
  late SettingsProvider settingsProvider;
  int index = 0;
  CarouselController? controller;

  final List<Widget> pages = [
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
settingsProvider=Provider.of(context);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      iconSize: 30.0,
      selectedItemColor: Colors.green[800],
      unselectedItemColor: Colors.blueGrey[400],
      currentIndex: index,
      onTap: (value) {
        // setState(() {
        //   index = value;
        // });
        settingsProvider.changeindex(value);
        if (settingsProvider.index == 1) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Screen2(),
          ));
        }
      },
      // items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //   BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/grid-01.png'),
      //       label: 'Grid'),
      //   //here i am create this as a navigator to go second screen....
      //   BottomNavigationBarItem(
      //       icon: Image.asset('assets/images/calendar.png'),
      //       label: 'Calender'),
      //   BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      // ],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: '•',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: '•',
          icon: Icon(Icons.grid_view_outlined),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: '•',
          icon: Icon(Icons.calendar_today_outlined),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: '•',
          icon: Icon(Icons.person),
          backgroundColor: Colors.white,
        ),
      ],

    );
  }
}
