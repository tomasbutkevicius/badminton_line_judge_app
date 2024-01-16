import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/constants/messages.dart';
import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:badminton_line_judge_app/utilities/navigation_utilities.dart';
import 'package:badminton_line_judge_app/widgets/proxy/button/proxy_button_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/spacing/proxy_spacing_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/text/proxy_text_widget.dart';

class InvalidRouteScreen extends StatelessWidget {
  final String path;

  const InvalidRouteScreen({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ProxyTextWidget(
              fontSize: ProxyFontSize.huge,
              fontWeight: ProxyFontWeight.semiBold,
              text: '${MessagesConstants.invalidRoute}: $path',
            ),
            const ProxySpacingVerticalWidget(),
            ProxyButtonWidget(
              color: ThemeColors.blue,
              text: MessagesConstants.goBack,
              onPressed: () => NavigationUtilities.reset(context),
            ),
          ],
        ),
      ),
    );
  }
}
