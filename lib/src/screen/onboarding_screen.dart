import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_club_ui/src/data.dart';
import 'package:sport_club_ui/src/screen/home_screen.dart';
import 'package:sport_club_ui/src/widgets/blob_widget.dart';
import 'package:sport_club_ui/src/widgets/circular_button.dart';
import 'package:sport_club_ui/src/widgets/onboard_page_view.dart';
import '../fade_navigation_transition.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late PageController pageController;
  late AnimationController controller;

  double scaleFactor = 1;
  bool isVisible = true;
  int currentPage = 0;


  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            ...blobList,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Choose your Level',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                      .animate(
                        delay: const Duration(milliseconds: 250),
                      )
                      .fadeIn()
                      .moveX(duration: 800.ms),
                  OnboardPageView(
                    pageController: pageController,
                  ),
                  Column(
                    children: [
                      CircularButton(
                        child: Visibility(
                          visible: isVisible,
                          child: const Icon(
                            Icons.chevron_right,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          // scale();

                          pageController.page!.floor() + 1 <
                                  onboardingData.length
                              ? pageController.animateToPage(
                                  pageController.page!.floor() + 1,
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.easeInOut,
                                )
                              : setState(() {
                                  controller.forward();
                                  isVisible = false;
                                });
                        },
                      )
                          .animate(
                              controller: controller,
                              autoPlay: false,
                              onComplete: (val) {
                                Navigator.of(context)
                                    .push(
                                  createRoute(
                                    screen: const HomeScreen(),
                                  ),
                                )
                                    .then((value) {
                                  setState(() {
                                    isVisible = true;
                                  });
                                  controller.reset();
                                });
                              })
                          .scale(
                              end: const Offset(30, 30),
                              curve: Curves.easeInOut),
                      SizedBox(
                        height: 1.h,
                      ),
                      Visibility(
                        visible: isVisible,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Skip for now',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
