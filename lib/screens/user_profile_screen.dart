import 'package:flutter/material.dart';
import 'package:gorouter/routes/app_routes.dart';
import 'package:go_router/go_router.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('User Profile'),
            Text(id),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoutes.product.name);
              },
              child: const Text('User Product'),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoutes.login.name);
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
