import 'package:flutter/material.dart';
import 'package:equiibrium/presentasion/screen/auth/login.dart';
import 'package:equiibrium/presentasion/screen/auth/register.dart';
import 'package:equiibrium/presentasion/screen/main/dashboard/dashboard.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    register: (context) => const RegisterScreen(),
    dashboard: (context) => const Dashboard(),
  };
}
