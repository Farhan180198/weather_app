import 'package:flutter/material.dart';
import 'package:weather_app/style/style.dart';
class RoundCard extends StatelessWidget {
  final String time;
  final String temperature;
  final String precipitation;
  final String assetIconPath; // Path to the asset icon

  const RoundCard({
    super.key,
    required this.time,
    required this.temperature,
    required this.precipitation,
    required this.assetIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57,
      height: 146,// Adjust the width as needed
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border:Border.all(width: 0.2, color: Colors.white) ,
        borderRadius: BorderRadius.circular(40,),
        gradient:
         linearGradientRoundCardScreen,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset(
            assetIconPath,
            width: 45,
            height: 45,
          ),
          Text(
            precipitation,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 12,
            ),
          ),
          Text(
            temperature,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}