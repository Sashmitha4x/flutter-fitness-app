import 'package:flutter/material.dart';
import 'package:task2_fitness_app/presentation/widgets/buttons/simple_button.dart';
import '../../../core/theme/app_sizes.dart';

class WorkoutCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final Color? buttonColor;

  const WorkoutCard({
    super.key,
    required this.imagePath,
    required this.onPressed,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radiusM),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.paddingS),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SimpleButton(
              text: 'Start',
              onPressed: onPressed,
              buttonColor: buttonColor,
            ),
          ],
        ),
      ),
    );
  }
}
