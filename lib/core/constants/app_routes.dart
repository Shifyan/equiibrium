import 'package:flutter/material.dart';
import 'package:equiibrium/presentasion/screen/auth/login.dart';
import 'package:equiibrium/presentasion/screen/auth/register.dart';
import 'package:equiibrium/presentasion/screen/main/main_screen.dart';
import 'package:equiibrium/presentasion/screen/main/portofolio/portofolio.dart';
import 'package:equiibrium/presentasion/screen/main/profile/profile.dart';
import 'package:equiibrium/presentasion/screen/main/watchlist/watchlist.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String portofolio = '/portofolio';
  static const String profile = '/profile';
  static const String watchlist = '/watchlist';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
    dashboard: (context) => const MainScreen(),
    portofolio: (context) => const PortofolioScreen(),
    profile: (context) => const ProfileScreen(),
    watchlist: (context) => const WatchlistScreen(),
  };
}
