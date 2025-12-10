import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackbarType { success, danger, warning }

class CustomSnackBar {
  static void showCustomSnackBar({
    required String title,
    required String message,
    Duration? duration,
    SnackPosition? snackPosition,
    SnackbarType? snackbarType,
    Color? color,
    IconData? icon,
    Color? iconColor,
    bool isButton = false,
    String buttonText = '',
    VoidCallback? onButtonPressed,
  }) {
    Get.snackbar(
      title,
      message,
      duration: duration ?? const Duration(seconds: 3),
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      colorText: Colors.white,
      backgroundColor:
          color ??
          (snackbarType == SnackbarType.success
              ? Colors.green
              : snackbarType == SnackbarType.danger
              ? Colors.red
              : snackbarType == SnackbarType.warning
              ? Colors.yellow
              : Get.theme.primaryColor),
      snackPosition: snackPosition ?? SnackPosition.TOP,
      icon: Icon(
        icon ??
            (snackbarType == SnackbarType.success
                ? Icons.check_circle
                : snackbarType == SnackbarType.danger
                ? Icons.error
                : snackbarType == SnackbarType.warning
                ? Icons.warning_amber_rounded
                : null),
        color: iconColor ?? Colors.white,
      ),
      mainButton: isButton
          ? TextButton(
              onPressed: onButtonPressed ?? () => Get.closeAllSnackbars(),
              child: Text(
                buttonText,
                style: Get.textTheme.labelSmall?.copyWith(color: Colors.white),
              ),
            )
          : null,
    );
  }

  static showCustomToast({
    String? title,
    required String message,
    Duration? duration,
    SnackPosition? snackPosition,
    SnackbarType? snackbarType,
    bool isButton = false,
    String buttonText = '',
    VoidCallback? onButtonPressed,
    Color? color,
    IconData? icon,
    Color? iconColor,
  }) {
    Get.rawSnackbar(
      title: title,
      message: message,
      onTap: (snack) {
        Get.closeAllSnackbars();
      },
      duration: duration ?? const Duration(seconds: 3),
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor:
          color ??
          (snackbarType == SnackbarType.success
              ? Colors.green
              : snackbarType == SnackbarType.danger
              ? Colors.red
              : snackbarType == SnackbarType.warning
              ? Colors.yellow
              : Get.theme.primaryColor),
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
      icon: Icon(
        icon ??
            (snackbarType == SnackbarType.success
                ? Icons.check_circle
                : snackbarType == SnackbarType.danger
                ? Icons.error
                : snackbarType == SnackbarType.warning
                ? Icons.warning
                : null),
        color: iconColor ?? Colors.white,
      ),
      mainButton: isButton
          ? TextButton(
              onPressed: onButtonPressed ?? () => Get.closeAllSnackbars(),
              child: Text(
                buttonText,
                style: const TextStyle(color: Colors.white),
              ),
            )
          : null,
      //overlayBlur: 0.8,
    );
  }
}
