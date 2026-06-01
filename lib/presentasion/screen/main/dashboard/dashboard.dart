import 'package:equiibrium/core/constants/app_routes.dart';
import 'package:equiibrium/core/constants/app_color.dart';
import 'package:equiibrium/core/constants/app_text_style.dart';
import 'package:equiibrium/presentasion/widget/appbar_custom.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.register);
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
