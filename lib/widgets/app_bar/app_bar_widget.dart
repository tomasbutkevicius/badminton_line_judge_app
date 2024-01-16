import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/constants/styles.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:badminton_line_judge_app/widgets/app_bar/app_bar_logo_widget.dart';

import 'app_bar_bottom_widget.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      backgroundColor: ThemeColors.tangerine100,
      bottom: const AppBarBottomWidget(),
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              AppBarLogoWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(StylesConstants.heightAppBar);
}
