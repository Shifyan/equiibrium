import 'package:flutter/material.dart';

class PortofolioScreen extends StatefulWidget {
  const PortofolioScreen({super.key});

  @override
  State<PortofolioScreen> createState() => _PortofolioScreenState();
}

class _PortofolioScreenState extends State<PortofolioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Portofolio')));
  }
}
