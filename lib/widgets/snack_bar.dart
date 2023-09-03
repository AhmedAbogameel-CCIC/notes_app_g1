import 'package:flutter/material.dart';
import 'package:note_app/core/app_colors/app_colors.dart';
import 'package:note_app/core/route_utils/route_utils.dart';

void showSnackBar({
  required String message,
  bool showDismissButton = false,
  bool error = false,
}) {
  ScaffoldMessenger.of(RouteUtils.context).hideCurrentSnackBar();
  ScaffoldMessenger.of(RouteUtils.context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: error ? AppColors.red : AppColors.green,
      behavior: SnackBarBehavior.floating,
      action: showDismissButton ? SnackBarAction(
        onPressed: () {
          print('Dismiss');
        },
        textColor: Colors.yellow,
        label: "Dismiss",
      ) : null,
    ),
  );
}
