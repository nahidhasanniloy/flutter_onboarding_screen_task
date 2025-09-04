import 'package:flutter/material.dart';
import 'package:task/utils/colors.dart';
import 'package:task/widgets/custom_button.dart';
import '../../utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 124),
                Container(
                  alignment: Alignment.centerLeft,
                  child: headingTwo(
                    data: 'Welcome! Your\nPersonalized Alarm',
                    fontWeight: FontWeight.w600,
                    textColor: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                headingThree(
                  data:
                      'Allow us to sync your sunset alarm\nbased on your location.',
                  textColor: AppColors.whiteColor,
                ),
                SizedBox(height: 16),

                SizedBox(
                  width: 360,
                  height: 309,
                  child: Image.asset(
                    'assets/images/morning_picture.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                CustomButton(
                  text: 'Use Current Location',
                  onPressed: () {},
                  color: AppColors.homeButtonColor,
                  borderRadius: 8,
                  suffixIcon: Icons.location_on,
                ),
                SizedBox(height: 8),
                CustomButton(
                  text: 'Home',
                  onPressed: () {},
                  color: AppColors.homeButtonColor,
                  borderRadius: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
