import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/splash/splash_screen.dart';

/// App Navigation Routes
class AppRouter {
  // Route Names
  static const String splash = '/';
  static const String dashboard = '/dashboard';
  static const String workoutPlan = '/workout-plan';
  
  // Router Configuration
  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      // Splash Screen Route
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
    ],
    
    // Error handling
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
}
