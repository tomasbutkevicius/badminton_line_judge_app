import 'package:badminton_line_judge_app/features/auth/bloc/auth_remote/auth_remote_bloc.dart';
import 'package:badminton_line_judge_app/utilities/navigation_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListenerUserWidget extends StatelessWidget {
  const ListenerUserWidget({super.key});

  void _listener(BuildContext context, AuthRemoteState state) {
    NavigationUtilities.reset(context);
  }

  bool _listenWhen(AuthRemoteState previousState, AuthRemoteState state) => previousState.authData?.email != state.authData?.email;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthRemoteBloc, AuthRemoteState>(
      listener: _listener,
      listenWhen: _listenWhen,
      child: const SizedBox.shrink(),
    );
  }
}
