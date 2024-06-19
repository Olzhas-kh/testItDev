// ignore: file_names
import 'package:flutter/material.dart';
import 'package:test_it_dev/core/extensions/num_extension.dart';
import 'package:test_it_dev/core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final double? heigtButton;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.borderColor,
    this.textColor,
    this.heigtButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: heigtButton ?? 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color ?? AppColors.kWhite,
        ),
        child: Row(
          children: [
            40.width,
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    letterSpacing: -0.24,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor ?? AppColors.kWhite,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.kWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
