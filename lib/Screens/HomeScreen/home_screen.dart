import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';

import '../../widgets/custom_button.dart';
import '../LocationScreen/alarm_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              // ==============================  Selected Location Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:48,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Selected Location",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.location_on, color: Colors.white, size: 20,),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "79 Regent's Park Rd, London\nNW1 8UY, United Kingdom",
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                      ],
                    ),

                    // selection section is end ===============================================================
                    const SizedBox(height: 16),
                    // =================================== custom button ==================================//
                    CustomButton(
                      text: 'Add Alarm',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const Onboarding3(),
                        //   ),
                        // );
                      },
                      color: AppColors.alarmButtonColor,
                      borderRadius: 4,
                    ),

                  ],
                ),
              ),



              const SizedBox(height: 24),

              // Alarms Section
              const Text(
                "Alarms",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),

              // Alarm List
              Expanded(
                child: ListView(
                  children: const [
                    AlarmTile(time: "7:10 pm", date: "Fri 21 Mar 2025"),
                    SizedBox(height: 12),
                    AlarmTile(time: "6:55 pm", date: "Fri 28 Mar 2025"),
                    SizedBox(height: 12),
                    AlarmTile(time: "7:00 pm", date: "Apr 04 Mar 2025"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
