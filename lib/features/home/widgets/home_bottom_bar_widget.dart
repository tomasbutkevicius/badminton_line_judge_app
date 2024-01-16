import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/widgets/bottom_bar/bottom_bar.dart';

class HomeBottomBarWidget extends StatelessWidget {
  const HomeBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
