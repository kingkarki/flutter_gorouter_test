import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/routes/app_routes.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Product'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Back'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.product.name);
            },
            child: const Text('Product'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.home.name);
            },
            child: const Text('Home'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(
                AppRoutes.profileWithoutId.name,
              );
            },
            child: const Text('Profile Without ID'),
          ),
        ],
      ),
    );
  }
}
