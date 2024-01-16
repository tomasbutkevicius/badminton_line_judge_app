import 'package:badminton_line_judge_app/constants/proxy.dart';
import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/features/auth/widgets/login_form_widget.dart';
import 'package:badminton_line_judge_app/widgets/proxy/spacing/proxy_spacing_widget.dart';

class LoginWrapperWidget extends StatelessWidget {
  const LoginWrapperWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginFormWidget(),
          ProxySpacingVerticalWidget(
            size: ProxySpacing.huge,
          ),
        ],
      ),
    );
  }
}
