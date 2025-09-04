import 'package:flutter/material.dart';

class AlarmTile extends StatelessWidget {
  final String time;
  final String date;

  const AlarmTile({super.key, required this.time, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Time + Date
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                date,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),

          // Switch
          Switch(
            value: true,
            onChanged: (val) {},
            activeColor: Colors.white,
            activeTrackColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}