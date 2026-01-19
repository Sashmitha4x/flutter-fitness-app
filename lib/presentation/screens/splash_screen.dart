import 'package:flutter/material.dart';
import 'package:task2_fitness_app/core/theme/text_style.dart';
import '../../core/theme/app_sizes.dart';
import '../widgets/buttons/primary_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.paddingM),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    'Join the Fitness\nClub',
                    style: AppTextStyles.splashTitle,
                  ),
                  SizedBox(height: AppSizes.spaceM),
                  PrimaryButton(
                    text: 'Start Training',
                    onPressed: () {},
                  ),
                  SizedBox(height: AppSizes.spaceM),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
