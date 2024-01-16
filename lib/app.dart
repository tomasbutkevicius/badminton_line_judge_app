import 'package:badminton_line_judge_app/bloc/bottom_navigation_bar/bottom_navigation_bar_bloc.dart';
import 'package:badminton_line_judge_app/bloc/navigation/navigation_bloc.dart';
import 'package:badminton_line_judge_app/features/auth/bloc/auth_remote/auth_remote_bloc.dart';
import 'package:badminton_line_judge_app/features/auth/bloc/auth_remote/auth_remote_repository.dart';
import 'package:badminton_line_judge_app/widgets/listener/listener_user_widget.dart';
import 'package:badminton_line_judge_app/widgets/navigation/navigation_wrapper_widget.dart';
import 'package:badminton_line_judge_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
        ),
        BlocProvider<AuthRemoteBloc>(
          create: (_) => AuthRemoteBloc(
            repositoryRemote: AuthRemoteRepository(),
          )..add(AuthRemoteEventInit()),
        ),
        BlocProvider<BottomNavigationBarBloc>(
          create: (_) => BottomNavigationBarBloc(),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const Stack(
        children: [
          ListenerUserWidget(),
          NavigationWrapperWidget(),
        ],
      ),
    );
  }
}
