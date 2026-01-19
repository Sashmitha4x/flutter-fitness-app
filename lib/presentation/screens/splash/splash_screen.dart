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
            child: SvgPicture.asset(
              'assets/images/bg_image.svg', 
              fit: BoxFit.cover,
              
            ),
          ),

          // Dark Overlay for better text readability
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.9),
                  ],
                  stops: const [0.0, 0.6, 1.0],
                ),
              ),
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
                    onPressed: () {
                    },
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
