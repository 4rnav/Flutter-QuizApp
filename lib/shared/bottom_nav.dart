import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.graduationCap,
              size: 20,
            ),
            label: 'Topics'),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bolt,
              size: 20,
            ),
            label: 'About'),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userCircle,
              size: 20,
            ),
            label: 'Profile'),
      ],

      fixedColor: Colors.deepOrange[300],
      onTap: (int idx){
        switch (idx){
          case 0:
            break;
          case 1:
          Navigator.pushNamed(context, '/about');
          break;
          case 2:
          Navigator.pushNamed(context, '/profile');
          break;
        }
      },
    );
  }
}
