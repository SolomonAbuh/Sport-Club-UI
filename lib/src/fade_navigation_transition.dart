import 'package:flutter/material.dart';

Route createRoute({required Widget screen}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const curve = Curves.easeInOut;

        Animation<double> curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        ); // CurvedAnimation
        return FadeTransition(
          opacity: curvedAnimation,
          child: child,
        );
      });
}
