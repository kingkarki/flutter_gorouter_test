import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/routes/route_constant.dart';

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
              context.goNamed(RouteConstants.product);
            },
            child: const Text('Product'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(RouteConstants.home);
            },
            child: const Text('Home'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(RouteConstants.profileWithoutId);
            },
            child: const Text('Profile Without ID'),
          ),
        ],
      ),
    );
  }
}
