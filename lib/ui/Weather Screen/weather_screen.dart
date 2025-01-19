import 'package:flutter/material.dart';
import 'package:weather_app/customized%20widgets/weather_card.dart';
import 'package:weather_app/style/style.dart';

class WeatherCardScreen extends StatelessWidget {
  const WeatherCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: linearGradientWeatherScreen
      ),
      child: Scaffold(
        // patric blue color is used here
        backgroundColor: patricBlueColor,
        //const Color(0xff26347d),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(color: whiteColor),
          title:  const Text(
            'Weather',
            style: TextStyle(color: whiteColor),
          ),
          // also patric color is used here
          backgroundColor: patricBlueColor,
          // const Color(0xff26347d),
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),

          children: [
            TextFormField(
              decoration: InputDecoration(
                // also koamaru color is used here
                  fillColor: koamaruBlueColor,
                  //const Color(0xff2E335A),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintStyle: const TextStyle(color: greyColor, fontSize: 18),
                  hintText: 'Search for a city or airport',
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.search,
                      color: greyColor,
                      size: 30.0,
                    ),
                  )),
            ),
            const WeatherCard(
                location: 'Montreal, Canada',
                weatherCondition: 'Mid Rain',
                temperature: '19°',
                highLowTemperature: 'H:24°  L:18°',
                iconPath: 'images/Moon cloud mid rain.png'),
            const SizedBox(height: 5),
            const WeatherCard(
                location: 'Toronto, Canada',
                weatherCondition: 'Fast Wind',
                temperature: '20°',
                highLowTemperature: 'H:19°  L:21°',
                iconPath: 'images/Moon cloud fast wind.png'),
            const SizedBox(height: 5),
            const WeatherCard(
                location: 'Tokyo, Japan',
                weatherCondition: 'Showers',
                temperature: '13°',
                highLowTemperature: 'H:16°  L:8°',
                iconPath: 'images/Sun cloud angled rain.png'),
          ],
        ),
      ),
    );
  }
}
