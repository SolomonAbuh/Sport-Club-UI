import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 7.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                height: 6.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  CupertinoIcons.line_horizontal_3_decrease,
                  color: Colors.white,
                ),
              )
                  .animate(delay: 500.ms)
                  .move(curve: Curves.decelerate, duration: 800.ms)
                  .fadeIn(curve: Curves.easeInOut, duration: 500.ms),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.search,
                size: 30,
              ),
            )
                .animate(delay: 500.ms)
                .move(curve: Curves.decelerate, duration: 800.ms)
                .fadeIn(curve: Curves.easeInOut, duration: 500.ms)
          ],
        ),
      ),
    );
  }
}
