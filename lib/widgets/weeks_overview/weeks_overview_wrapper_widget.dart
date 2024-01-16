import 'package:badminton_line_judge_app/widgets/proxy/text/proxy_text_widget.dart';
import 'package:flutter/material.dart';

class WeeksOverviewWrapperWidget extends StatelessWidget {
  const WeeksOverviewWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProxyTextWidget(text: 'Artimiausios repeticijos'),
      ],
    );
  }
}
