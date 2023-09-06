import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sizer/sizer.dart';
import 'package:sport_club_ui/src/data.dart';
import 'package:sport_club_ui/src/widgets/club_details_info_card.dart';
import '../widgets/blob_widget.dart';

class ClubDetailsScreen extends StatelessWidget {
  final int index;
  const ClubDetailsScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: Navigator.of(context).pop,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(
            int.parse(clubData.elementAt(index)['color'].toString()),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ...clubBlobList,
            Positioned(
              bottom: 35.h,
              child: Image.asset(
                clubData.elementAt(index)['event_picture'].toString(),
              ),
            )
                .animate(delay: 1000.ms)
                .slideY(duration: 600.ms, curve: Curves.ease, begin: 0.2)
                .fadeIn(
                  curve: Curves.easeIn,
                  duration: 100.ms,
                ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 52.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 19, 19, 19),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.5.w, vertical: 2.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        clubData.elementAt(index)['event'].toString(),
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                          .animate(delay: 800.ms)
                          .slideY(
                              duration: 200.ms,
                              curve: Curves.easeOut,
                              begin: 0.5)
                          .fadeIn(
                            curve: Curves.easeOut,
                            duration: 100.ms,
                          ),
                      Text(
                        'Take part in a 2-hour session where you can expect '
                        'plenty of rallying followed by competetive point '
                        'play team singles style',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Row(
                        children: [
                          ClubDetailsInfoCard(
                            title: '24 April',
                            icon: CupertinoIcons.calendar,
                            delay: 1000.ms,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          ClubDetailsInfoCard(
                            title: '18:00 - 20:00',
                            icon: CupertinoIcons.time,
                            delay: 1100.ms,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          ClubDetailsInfoCard(
                            title: 'All levels',
                            icon: CupertinoIcons.star,
                            delay: 1200.ms,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade800,
                          padding: EdgeInsets.symmetric(
                            vertical: 2.5.h,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Participate: 50 \$',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      )
                          .animate(delay: 1400.ms)
                          .slideY(
                              duration: 600.ms,
                              curve: Curves.easeInOut,
                              begin: 0.1)
                          .fadeIn(
                            curve: Curves.easeOut,
                            duration: 600.ms,
                          ),
                    ],
                  ),
                ),
              )
                  .animate(delay: 500.ms)
                  .slideY(duration: 200.ms, curve: Curves.easeOut, begin: 0.5)
                  .fadeIn(
                    curve: Curves.easeOut,
                    duration: 100.ms,
                  ),
            )
          ],
        ),
      ),
    ));
  }
}
