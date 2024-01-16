import 'package:badminton_line_judge_app/features/auth/models/form_login_model.dart';
import 'package:flutter/material.dart';
import 'package:badminton_line_judge_app/widgets/common/form_button_widget.dart';

class LoginFormButtonsWidget extends StatelessWidget {
  final FormLoginModel formModel;
  final VoidCallback onSubmitted;

  const LoginFormButtonsWidget({
    Key? key,
    required this.formModel,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormButtonWidget(
      onPressed: onSubmitted,
      text: 'Prisijungti',
      // activated: formModel.form.valid,
      activated: true,
    );
  }
}
