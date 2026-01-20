import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task2_fitness_app/presentation/cards/workout_card.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/app_sizes.dart';
import '../../../core/routes/app_router.dart';
import '../../core/theme/text_style.dart';
import '../cards/promo_card.dart';
import '../cards/recommended_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.paddingS),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizes.spaceS),
              Text(
                'Hello Jenna,',
                style: AppTextStyles.dashboardGreeting,
              ),
              Text(
                "Let's start exercising",
                style: AppTextStyles.dashboardGreeting,
              ),
              SizedBox(height: AppSizes.spaceXL),
              Row(
                children: [
                  Expanded(
                    child: WorkoutCard(
                      imagePath: 'assets/images/start1.png',
                      buttonColor: const Color.fromARGB(255, 112, 18, 18),
                      onPressed: () {
                        context.go(AppRouter.workoutPlan);
                      },
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceM),
                  Expanded(
                    child: WorkoutCard(
                      imagePath: 'assets/images/start2.png',
                      buttonColor: const Color(0xFFE57373),
                      onPressed: () {
                        context.go(AppRouter.workoutPlan);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceXL),
              Text(
                'Recommended for you',
                style: AppTextStyles.sectionHeader,
              ),
              SizedBox(height: AppSizes.spaceM),
              Row(
                children: [
                  RecommendedCard(
                    imagePath: 'assets/images/recomended1.png',
                    onTap: () {},
                  ),
                  SizedBox(width: AppSizes.spaceM),
                  RecommendedCard(
                    imagePath: 'assets/images/recomended2.png',
                    onTap: () {},
                  ),
                  SizedBox(width: AppSizes.spaceM),
                  RecommendedCard(
                    imagePath: 'assets/images/recomended3.png',
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceXXL),
              PromoCard(
                imagePath: 'assets/images/classes1.png',
                title: 'Find me a personal Trainer',
                buttonText: 'Explore now',
                onPressed: () {},
              ),
              SizedBox(height: AppSizes.spaceXL),
              PromoCard(
                imagePath: 'assets/images/classes2.png',
                title: 'Find me group classes',
                buttonText: 'Explore now',
                onPressed: () {},
              ),
              SizedBox(height: AppSizes.spaceM),
            ],
          ),
        ),
      ),
    );
  }
}
