import 'package:flutter/material.dart';
import 'package:weather_app/customized%20widgets/weather_card.dart';

class WeatherCardScreen extends StatelessWidget {
  const WeatherCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff2E335A),
              Color(0xff1C1B33),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Color(0xff48319D),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            'Weather',
            style: TextStyle(color: Colors.white),
          ),

          backgroundColor: const Color(0xff48319D),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: const Color(0xff2E335A),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                        hintText: 'Search for a city or airport',
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 30.0,
                          ),
                        )),
                  ),
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
        ),
      ),
    );
  }
}
