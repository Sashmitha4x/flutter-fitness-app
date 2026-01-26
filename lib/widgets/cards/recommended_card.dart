import 'package:flutter/material.dart';
import '../../../core/theme/app_sizes.dart';

class RecommendedCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const RecommendedCard({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
