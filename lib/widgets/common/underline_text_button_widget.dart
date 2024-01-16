import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:badminton_line_judge_app/theme/theme_colors.dart';
import 'package:badminton_line_judge_app/widgets/proxy/button/proxy_button_wrap_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/text/proxy_text_widget.dart';

class UnderlineTextButtonWidget extends StatelessWidget {
  final String? sideText;
  final String buttonText;
  final VoidCallback onPressed;
  final MainAxisAlignment mainAxisAlignment;

  const UnderlineTextButtonWidget({
    Key? key,
    this.sideText,
    this.mainAxisAlignment = MainAxisAlignment.center,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        if (sideText != null)
          ProxyTextWidget(
            text: sideText!,
            fontSize: ProxyFontSize.large,
          ),
        ProxyButtonWrapWidget(
          backgroundColor: null,
          borderColor: null,
          onPressed: onPressed,
          child: ProxyTextWidget(
            text: buttonText,
            fontSize: ProxyFontSize.large,
            color: ThemeColors.orange,
            isUnderline: true,
          ),
        ),
      ],
    );
  }
}
