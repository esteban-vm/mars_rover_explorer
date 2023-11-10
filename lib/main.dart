import 'package:flutter/material.dart';
import 'package:rover_explorer/services/app_router.dart';

void main() {
  runApp(const MarsRoverExplorer());
}

class MarsRoverExplorer extends StatelessWidget {
  const MarsRoverExplorer({super.key});

  @override
  Widget build(context) {
    return MaterialApp.router(
      title: 'Mars Rover Explorer',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.config,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
