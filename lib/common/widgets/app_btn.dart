import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lazy_read_app/common/widgets/app_text.dart';
import 'package:lazy_read_app/common/widgets/app_text_style.dart';
import 'package:lazy_read_app/core/constants/app_colors.dart';

class Appbtn extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;
  final double radius;
  final Color textColor;
  final double fontSize;
  final IconData? icon;
  final bool isIconLeading;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback? onPressed;
  const Appbtn({
    super.key,
    required this.text,
    this.color = AppColors.primaryColor,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 8,
    this.textColor = AppColors.lightModeTextColor,
    this.fontSize = 16,
    this.icon,
    this.isIconLeading = true,
    this.iconColor,
    this.iconSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null && isIconLeading)
              Icon(
                icon,
                color: iconColor ?? AppColors.lightModeTextColor,
                size: iconSize ?? 20.sp,
              ),
            if (icon != null && isIconLeading) SizedBox(width: 8.w),
            AppText(
              text: text,
              style: appTextStyle(
                size: fontSize,
                color: textColor,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
            if (icon != null && !isIconLeading) SizedBox(width: 8.w),
            if (icon != null && !isIconLeading)
              Icon(
                icon,
                color: iconColor ?? AppColors.lightModeTextColor,
                size: iconSize ?? 20.sp,
              ),
            if (icon == null && !isIconLeading) const SizedBox(width: 0),
          ],
        ),
      ),
    );
  }
}
