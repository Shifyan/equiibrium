import 'package:flutter/material.dart';
import 'package:equiibrium/core/theme/app_theme.dart';
import 'package:equiibrium/core/constants/app_routes.dart';
import 'package:equiibrium/core/constants/token_storage_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isLoggedIn = await TokenStorageService().isLoggedIn();
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equilibrium Finance',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: isLoggedIn ? AppRoutes.dashboard : AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}
