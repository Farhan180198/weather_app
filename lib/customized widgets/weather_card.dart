import 'package:flutter/material.dart';

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
    this.backgroundColor = const Color(0xff362A84), // Default background color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 200,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(
              temperature,
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 24.0),
            Image.asset(
              iconPath,
              height: 120,
              width: 120,
            ),
          ],),
          // const SizedBox(height: 4.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                highLowTemperature,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white60,
                ),
              ),
              // Text(
              //   '',
              // ),
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
                color: Colors.white,
              ),
            ),
              const SizedBox(width: 14.0),

            Text(
              weatherCondition,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],),
        ],
      ),
    );
  }
}
