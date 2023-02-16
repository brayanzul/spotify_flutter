import 'package:flutter/material.dart';

class PerfileView extends StatefulWidget {
  const PerfileView({super.key});

  @override
  State<PerfileView> createState() => _PerfileViewState();
}

class _PerfileViewState extends State<PerfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile Works'),
      ),
    );
  }
}