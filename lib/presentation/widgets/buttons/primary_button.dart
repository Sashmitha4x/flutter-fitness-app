import 'package:flutter/material.dart';
import 'package:task2_fitness_app/core/theme/app_sizes.dart';
import 'package:task2_fitness_app/core/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onPressed,
      behavior: HitTestBehavior.opaque, 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: AppSizes.buttonHeight, 
              decoration: BoxDecoration(
                color: AppColors.primaryButton,
                borderRadius: BorderRadius.circular(AppSizes.radiusFull),
              ),
              alignment: Alignment.center,
              child: isLoading
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: AppColors.textPrimary,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(
                      text,
                      style: const TextStyle( 
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w400,
                        fontSize: 18, 
                      ),
                    ),
            ),
          ),
          Container(
            width: 12, 
            height: 6, 
            color: AppColors.primaryButton,
          ),
          Container(
            height: AppSizes.buttonHeight, 
            width: AppSizes.buttonHeight, 
            decoration: const BoxDecoration(
              color: AppColors.primaryButton,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(9), 
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.textPrimary, 
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: AppColors.primaryButton,
                size: AppSizes.iconS,
              ),
            ),
          ),
        ],
      ),
    );
  }
}