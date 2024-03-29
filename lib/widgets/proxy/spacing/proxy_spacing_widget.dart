import 'package:flutter/cupertino.dart';
import 'package:badminton_line_judge_app/constants/proxy.dart';

class ProxySpacingVerticalWidget extends StatelessWidget {
  final ProxySpacing size;

  const ProxySpacingVerticalWidget({
    Key? key,
    this.size = ProxySpacing.medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: ProxyConstants.getSpacing(size),
    );
  }
}

class ProxySpacingHorizontalWidget extends StatelessWidget {
  final ProxySpacing size;

  const ProxySpacingHorizontalWidget({
    Key? key,
    this.size = ProxySpacing.medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0,
      width: ProxyConstants.getSpacing(size),
    );
  }
}
