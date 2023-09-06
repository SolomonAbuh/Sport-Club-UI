import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ClubsText extends StatelessWidget {
  const ClubsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        'Clubs',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      )
          .animate(
            delay: 800.ms,
          )
          .slideX(
            duration: 800.ms,
            curve: Curves.easeOut,
            begin: -0.1,
          )
          .fadeIn(duration: 800.ms),
    );
  }
}
