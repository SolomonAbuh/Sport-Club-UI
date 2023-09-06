import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sport_club_ui/src/widgets/club_page_view_card.dart';

class ClubsPageView extends StatelessWidget {
  const ClubsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305,
      child: PageView.builder(
        padEnds: false,
        physics: const ClampingScrollPhysics(),
        itemCount: 2,
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (context, index) {
          return ClubPageViewCard(index: index);
        },
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
        .fadeIn(duration: 800.ms);
  }
}
