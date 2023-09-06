// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TrainTitle extends StatelessWidget {
  const TrainTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Train',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
          Text(
            'price',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade600,
            ),
          )
              .animate(
                delay: 800.ms,
              )
              .slideX(
                duration: 800.ms,
                curve: Curves.easeOut,
                begin: 0.1,
              )
              .fadeIn(duration: 800.ms),
        ],
      ),
    );
  }
}
