import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/widgets/custom_button.dart';
import '../widgets/indicator_widget.dart';
import 'onboarding2.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // 👉 GIF Section (only bottom radius)
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  "assets/images/giftoonbord1.gif", // 🔥 তোমার GIF file
                  width: double.infinity,
                  fit: BoxFit.cover, // 🔑 full width + auto resize
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                color: Colors.grey.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sync with Nature’s\nRhythm",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Experience a peaceful transition into the evening with an alarm "
                      "that aligns with the sunset.\nYour perfect reminder, always "
                      "15 minutes before sundown.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                    const Spacer(),
                    PageIndicator(color: AppColors.primaryColor),

                    const SizedBox(height: 20),

                    // ============================ Custom Button Section ========================//

                    CustomButton(
                      text: 'Text',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Onboarding2(),
                          ),
                        );
                      },
                    ),
                    // ============================ Custom Button Section end ========================//

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
