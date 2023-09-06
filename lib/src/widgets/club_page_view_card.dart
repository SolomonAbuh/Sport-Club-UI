import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../data.dart';
import '../fade_navigation_transition.dart';
import '../screen/club_details_screen.dart';
import 'blob_widget.dart';

class ClubPageViewCard extends StatelessWidget {
  final int index;
  const ClubPageViewCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: index != 0 ? 5.w : 2.w,
        left: index == 0 ? 5.w : 2.w,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            createRoute(
              screen: ClubDetailsScreen(
                index: index,
              ),
            ),
          );
        },
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
                height: 280,
                bottom: -10,
                right: -20,
                child: Image.asset(
                  clubData.elementAt(index)['asset'].toString(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        clubData.elementAt(index)['title'].toString(),
                        style: const TextStyle(
                          fontSize: 28,
                          height: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: const Text(
                          'All levels',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '2 Events',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      )
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
