import 'package:badminton_line_judge_app/models/navigation/navigation_item_model.dart';
import 'package:badminton_line_judge_app/features/auth/screens/login_screen.dart';
import 'package:badminton_line_judge_app/features/home/screens/home_screen.dart';
import 'package:badminton_line_judge_app/features/home/widgets/home_bottom_bar_widget.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';

  static Map<String, NavigationItem> mapping = {
    Routes.home: NavigationItem(
      body: (_) => const HomeScreen(),
      appBar: (_) => null,
      bottomNavigationBar: (_) => const HomeBottomBarWidget(),
    ),
    Routes.login: NavigationItem(
      body: (_) => const LoginScreen(),
      appBar: (_) => null,
      bottomNavigationBar: (_) => null,
    ),
  };
}
