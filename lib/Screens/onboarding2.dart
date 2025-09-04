import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/indicator_widget.dart';
import 'onboarding3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  "assets/images/giftonboarding2.gif",  // 🔥 তোমার GIF file
                  width: double.infinity,
                  fit: BoxFit.cover, // 🔑 full width + auto resize
                ),
              ),
            ),

            // 👉 Text Section
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                color: Colors.grey.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Effortless & Automatic",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "No need to set alarms manually. Wakey calculates the sunset time for your location and alerts you on time.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                    const Spacer(),
                     PageIndicator( color1: AppColors.primaryColor,),
                    const SizedBox(height: 20),

                    CustomButton(
                      text: 'Text',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Onboarding3(),
                          ),
                        );
                      },
                    ),




                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}