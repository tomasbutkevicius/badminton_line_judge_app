import 'package:badminton_line_judge_app/bloc/bottom_navigation_bar/bottom_navigation_bar_bloc.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;

  const BottomBar({Key? key, required this.items}) : super(key: key);

  void _onItemTapped(int index, BuildContext context) {
    context.read<BottomNavigationBarBloc>().add(BottomNavigationBarEventChangeIndex(index: index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        if (state.selectedIndex >= items.length) {
          context.read<BottomNavigationBarBloc>().add(BottomNavigationBarEventInit());
          return const SizedBox.shrink();
        }

        return BottomNavigationBar(
          items: items,
          currentIndex: state.selectedIndex,
          selectedItemColor: ThemeColors.orange,
          unselectedItemColor: ThemeColors.blue500,
          backgroundColor: ThemeColors.tangerine200,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) => _onItemTapped(index, context),
        );
      },
    );
  }
}
