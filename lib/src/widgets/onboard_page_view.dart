// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';

import 'package:sport_club_ui/src/data.dart';
import 'package:sport_club_ui/src/widgets/onboard_page_view_card.dart';

class OnboardPageView extends StatefulWidget {
  final PageController pageController;
  const OnboardPageView({
    super.key,
    required this.pageController,
  });

  @override
  State<OnboardPageView> createState() => _OnboardPageViewState();
}

class _OnboardPageViewState extends State<OnboardPageView> {
  var viewportFraction = 0.8;
  double? pageOffset = 0;

  @override
  void initState() {
    widget.pageController.addListener(
      () => setState(
        () => pageOffset = widget.pageController.page,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    widget.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: onboardingData.length,
        controller: widget.pageController,
        onPageChanged: (val) {},
        itemBuilder: (context, index) {
          double scale = max(viewportFraction,
              1 - (pageOffset! - index).abs() + viewportFraction);
          double angleY = (pageOffset! - index).abs();
          if (angleY > 0.5) {
            angleY = 1 - angleY;
          }
          return Padding(
            padding: EdgeInsets.only(
              right: 4.w,
              left: 4.w,
              top: 50 - scale * 25,
              bottom: 50 - scale * 25,
            ),
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(angleY),
              alignment: Alignment.center,
              child: OnboardPageViewCard(index: index),
            ),
          );
        },
      ),
    )
        .animate()
        .fadeIn() // uses `Animate.defaultDuration`
        .move(
          duration: 800.ms,
        );
  }
}
