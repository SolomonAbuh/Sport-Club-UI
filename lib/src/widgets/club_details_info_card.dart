import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class ClubDetailsInfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Duration delay;
  const ClubDetailsInfoCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.delay});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.shade500,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.grey.shade500,
              size: 3.8.h,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade500,
              ),
            )
          ],
        ),
      ),
    )
        .animate(delay: delay)
        .slideY(duration: 200.ms, curve: Curves.easeOut, begin: 0.5)
        .slideX(
          begin: 0.1,
          duration: 400.ms,
          curve: Curves.easeInOut,
        )
        .fadeIn(
          duration: 400.ms,
          curve: Curves.easeInOut,
        );
  }
}
