import 'package:badminton_line_judge_app/constants/icons.dart';
import 'package:badminton_line_judge_app/constants/routes.dart';
import 'package:badminton_line_judge_app/features/auth/bloc/auth_remote/auth_remote_bloc.dart';
import 'package:badminton_line_judge_app/features/auth/widgets/login_wrapper_widget.dart';
import 'package:badminton_line_judge_app/utilities/navigation_utilities.dart';
import 'package:badminton_line_judge_app/widgets/common/local_image_wrapper_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badminton_line_judge_app/utilities/status_utilities.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _listener(BuildContext context, AuthRemoteState state) {
    StatusUtilities.handleStatus(context, state.status);
    if (state.isUserLoggedIn) {
      NavigationUtilities.push(path: Routes.home, context: context);
    }
  }

  bool _listenWhen(AuthRemoteState previousState, AuthRemoteState state) => previousState.status != state.status;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LocalImageWrapperWidget(image: IconsConstants.flamesWithNotes),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              BlocListener<AuthRemoteBloc, AuthRemoteState>(
                listener: _listener,
                listenWhen: _listenWhen,
                child: const SizedBox.shrink(),
              ),
              const Expanded(child: LoginWrapperWidget()),
            ],
          ),
        ),
      ],
    );
  }
}
