import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task2_fitness_app/core/theme/text_style.dart';
import '../../../core/theme/app_sizes.dart';
import '../../widgets/buttons/primary_button.dart';

/// Splash Screen - First screen users see
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.paddingL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),

                  // Title Text
                  Text(
                    'Join the Fitness\nClub',
                    style: AppTextStyles.splashTitle,
                  ),

                  SizedBox(height: AppSizes.spaceXL),

                  // Start Training Button
                  PrimaryButton(
                    text: 'Start Training',
                    onPressed: () {},
                  ),
                  SizedBox(height: AppSizes.spaceXL),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
