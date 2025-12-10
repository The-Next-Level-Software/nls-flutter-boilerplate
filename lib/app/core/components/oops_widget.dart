import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_colors.dart';

class OopsWidget extends StatelessWidget {
  const OopsWidget({
    super.key,
    this.errorMessage,
    this.errorTitle,
    this.iconData,
  });
  final String? errorMessage;
  final String? errorTitle;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData ?? Icons.error_outline, color: AppColors.lightGray),
          Gap(8),
          Text(
            errorTitle ?? "Oops",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Gap(8),
          Text(
            errorMessage ?? "Something went wrong",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
