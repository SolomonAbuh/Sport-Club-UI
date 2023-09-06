import 'package:flutter/material.dart';

import '../data.dart';

class OnboardPageViewCard extends StatelessWidget {
  final int index;
  const OnboardPageViewCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 246, 219),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Text(
              onboardingData.elementAt(index)['emoji'].toString(),
              style: const TextStyle(fontSize: 80),
            ),
          ),
          Text(
            onboardingData.elementAt(index)['level'].toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
