import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/indicator_widget.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
                  "assets/images/onboarding3.gif",  // 🔥 তোমার GIF file
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
                      "Relax & Unwind",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Font-Family/Text',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "hope to take the courage to pursue your dreams.",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily:'Oxygen',
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                    const Spacer(),
                     PageIndicator( color2: AppColors.primaryColor,),
                    const SizedBox(height: 20),

                    // 👉 Next Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding2(),));
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    )
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
