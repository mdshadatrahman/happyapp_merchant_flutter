import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/Vector.svg'),
          label: 'Overview',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/points.jpeg'),
          label: 'Points',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/ticket.svg'),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/settings.svg'),
          label: 'Settings',
        ),
      ],
      currentIndex: 1,
      selectedItemColor: Color(0xff6347EB),
      // onTap: _onItemTapped,
    );
  }
}
