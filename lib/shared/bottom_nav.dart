import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.house,
            size: 20,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.bell,
            size: 20,
          ),
          label: 'Notifikasi',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.newspaper,
            size: 20,
          ),
          label: 'Berita',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.circleUser,
            size: 20,
          ),
          label: 'Akun',
        ),
      ],
      fixedColor: Colors.deepPurple[200],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/notification');
            break;
          case 2:
            Navigator.pushNamed(context, '/news');
            break;
          case 3:
            Navigator.pushNamed(context, '/account');
            break;
        }
      },
    );
  }
}
