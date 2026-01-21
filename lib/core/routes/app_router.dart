import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/dashboard_screen.dart';
import '../../presentation/screens/splash_screen.dart';
import '../../presentation/screens/workout_plan_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String dashboard = '/dashboard';
  static const String workoutPlan = '/workout-plan';
  
  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: dashboard,
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
      GoRoute(
        path: workoutPlan,
        name: 'workoutPlan',
        builder: (context, state) => const WorkoutPlanScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
}
