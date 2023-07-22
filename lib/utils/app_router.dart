import 'package:go_router/go_router.dart';

import '../views/home_view.dart';
import '../views/login_view.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';


  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
     GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
  
  ]);
}
