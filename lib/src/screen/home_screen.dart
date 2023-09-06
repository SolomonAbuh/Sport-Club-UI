import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_club_ui/src/widgets/app_bar.dart';
import 'package:sport_club_ui/src/widgets/clubs_page_view.dart';
import 'package:sport_club_ui/src/widgets/train_list.dart';
import '../widgets/clubs_text.dart';
import '../widgets/train_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            children: [
              const AppBarWidget(),
              SizedBox(
                height: 1.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ClubsText(),
                      SizedBox(
                        height: 1.h,
                      ),
                      const ClubsPageView(),
                      SizedBox(
                        height: 3.h,
                      ),
                      const TrainTitle(),
                      SizedBox(
                        height: 3.h,
                      ),
                      const TrainList()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
