import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:badminton_line_judge_app/constants/icons.dart';

class AppBarLogoWidget extends StatelessWidget {
  const AppBarLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        IconsConstants.logo,
        height: 20.0,
      ),
    );
  }
}
