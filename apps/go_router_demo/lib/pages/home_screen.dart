import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_demo/router/router_service.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerServiceProvider).go('/about');
              },
              child: const Text('About Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerServiceProvider).go('/books');
              },
              child: const Text('Book Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerServiceProvider).go('/lab');
              },
              child: const Text('Lab Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerServiceProvider).go('/showcase');
              },
              child: const Text('Showcase Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(routerServiceProvider).go('/uikits');
              },
              child: const Text('UI kits Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
