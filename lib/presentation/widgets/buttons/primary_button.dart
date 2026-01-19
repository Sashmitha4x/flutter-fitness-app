import 'package:flutter/material.dart';
import 'package:task2_fitness_app/core/theme/text_style.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/app_sizes.dart';

/// Primary Button Widget - Reusable button component
class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? icon;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? AppSizes.buttonHeight,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryButton,
          foregroundColor: textColor ?? AppColors.textPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusFull),
          ),
          elevation: 0,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.paddingL,
            vertical: AppSizes.paddingM,
          ),
        ),
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColors.textPrimary,
                  strokeWidth: 2,
                ),
              )
            : icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon!,
                      SizedBox(width: AppSizes.spaceS),
                      Text(
                        text,
                        style: AppTextStyles.buttonText.copyWith(
                          color: textColor ?? AppColors.textPrimary,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: AppTextStyles.buttonText.copyWith(
                      color: textColor ?? AppColors.textPrimary,
                    ),
                  ),
      ),
    );
  }
}
