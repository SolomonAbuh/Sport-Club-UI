// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../data.dart';

class TrainList extends StatelessWidget {
  const TrainList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
          trainData.length,
          (index) => Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                trailing: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "\$${trainData.elementAt(index)['price']}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
                    .animate(delay: (index * 100 + 1000).ms)
                    .fadeIn(
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    )
                    .slideX(
                      begin: 0.5,
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    ),
                title: Text(
                  trainData.elementAt(index)['title'].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
                    .animate(delay: (index * 100 + 1000).ms)
                    .fadeIn(
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    )
                    .slideY(
                      begin: 0.5,
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    ),
                subtitle: Text(
                  trainData.elementAt(index)['time'].toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade400,
                  ),
                ).animate(delay: (index * 100 + 1000).ms).fadeIn(
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    ),
                leading: Container(
                  height: 60,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      trainData.elementAt(index)['emoji'].toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                )
                    .animate(delay: (index * 100 + 1000).ms)
                    .fadeIn(
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    )
                    .slideX(
                      begin: 0.5,
                      duration: 400.ms,
                      curve: Curves.easeInOut,
                    )
                    .slideY(
                      duration: 300.ms,
                      begin: 0.5,
                      curve: Curves.easeInOut,
                    ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    )
        .animate(delay: 500.ms)
        .fadeIn(
          duration: 400.ms,
          curve: Curves.easeInOut,
        )
        .slideX(
          begin: 0.5,
          duration: 400.ms,
          curve: Curves.easeInOut,
        )
        .slideY(
          duration: 300.ms,
          begin: 0.5,
          curve: Curves.easeInOut,
        );
  }
}
