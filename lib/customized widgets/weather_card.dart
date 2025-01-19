import 'package:flutter/material.dart';
import 'package:weather_app/style/style.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final String weatherCondition;
  final String temperature;
  final String highLowTemperature;
  final String iconPath; // Path to the asset image
  final Color backgroundColor;

  const WeatherCard({
    super.key,
    required this.location,
    required this.weatherCondition,
    required this.temperature,
    required this.highLowTemperature,
    required this.iconPath,
    // cosmic blue color
    this.backgroundColor =cosmicBlueColor, // Default background color
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(

      // width: 342,
      width: screenWidth * 0.32,
      height: 200,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage('images/Rectangle 1.png')),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(
              temperature,
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w400,
                color: whiteColor,
              ),
            ),
            const SizedBox(width: 24.0),
            Image.asset(
              iconPath,
              height: 120,
              width: 120,
            ),
          ],),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                highLowTemperature,
                style: const TextStyle(
                  fontSize: 14,
                  color: whiteColor1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Text(
              location,
              style: const TextStyle(
                fontSize: 16,
                color: whiteColor,
              ),
            ),

            Text(
              weatherCondition,
              style: const TextStyle(
                fontSize: 16,
                color: whiteColor,
              ),
            ),
          ],),
        ],
      ),
    );
  }
}
