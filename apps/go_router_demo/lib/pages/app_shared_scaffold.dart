import 'package:flutter/material.dart';

class AppSharedScaffold extends StatelessWidget {
  const AppSharedScaffold({
    required this.contentChild,
    super.key,
  });

  final Widget contentChild;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: contentChild,
    );
  }
}
