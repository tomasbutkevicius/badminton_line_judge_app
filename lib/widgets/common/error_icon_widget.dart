import 'package:badminton_line_judge_app/constants/messages.dart';
import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:badminton_line_judge_app/widgets/proxy/spacing/proxy_spacing_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/text/proxy_text_widget.dart';
import 'package:flutter/material.dart';

class ErrorIconWidget extends StatelessWidget {
  final String text;
  final bool center;
  final VoidCallback? onPressed;

  const ErrorIconWidget({
    Key? key,
    this.center = true,
    this.text = MessagesConstants.anErrorHasOccurred,
    this.onPressed,
  }) : super(key: key);

  Widget _buildContainer(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline),
          const ProxySpacingVerticalWidget(
            size: ProxySpacing.small,
          ),
          ProxyTextWidget(
            text: text,
            fontSize: ProxyFontSize.large,
            color: Theme.of(context).errorColor,
            fontWeight: ProxyFontWeight.semiBold,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return center ? Center(child: _buildContainer(context)) : _buildContainer(context);
  }
}
