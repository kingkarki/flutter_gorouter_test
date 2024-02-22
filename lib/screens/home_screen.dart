import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/routes/app_routes.dart';
// import 'package:gorouter/routes/route_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(AppRoutes.profile.name,
                pathParameters: {'id': '123231'});
          },
          child: const Text('User Profile'),
        ),
      ),
    );
  }
}
