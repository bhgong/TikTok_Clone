import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark;

void showFirebaseErrorSnack(
  BuildContext context,
  Object? error,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      showCloseIcon: true,
      content: Text(
          // (error as FirebaseException).message ?? "Something wen't wrong.",
          "will be edit..."),
    ),
  );
}
