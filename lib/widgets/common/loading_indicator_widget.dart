import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  final bool center;

  const LoadingIndicatorWidget({
    Key? key,
    this.center = true,
  }) : super(key: key);

  Widget _buildContainer() {
    return const SizedBox(
      width: 48,
      height: 48,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: ThemeColors.purpleLight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return center ? Center(child: _buildContainer()) : _buildContainer();
  }
}