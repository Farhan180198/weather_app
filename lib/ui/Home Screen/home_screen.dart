import 'package:flutter/material.dart';
import 'package:weather_app/customized%20widgets/round_cards.dart';
import 'package:weather_app/style/style.dart';
import '../Weather Screen/weather_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //scaffold
    return Scaffold(

      body: Stack(alignment: AlignmentDirectional.bottomStart, children: [
        const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage('images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Montreal',
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              '19°',
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 80,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'Mostly Clear',
              style: TextStyle(
                  color: whiteColor1,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'H:24°  L:18°',
              style: TextStyle(
                  color:whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Image(
              image: AssetImage('images/House 4.png'),
            ),
          ],
        ),

        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),

              gradient: linearGradientHomeScreen
              // LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: [Color(0xff5936b4), Color(0xff362a84)])

          ),
          width: MediaQuery.of(context).size.width,
          height: 280,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 15.0, right: 15.0),
            child: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   'Hourly Forecast',
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w500),
                    // ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const WeatherCardScreen()));
                    }, child: const Text('Weekly Forecast',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)
                    ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const WeatherCardScreen()));
                    }, child: const Text('Hourly Forecast',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoundCard(
                            time: "12 AM",
                            temperature: "19°",
                            precipitation: "30%",
                            assetIconPath: 'images/Moon cloud mid rain.png',
                          ),
                          RoundCard(
                            time: "Now",
                            temperature: "19°",
                            precipitation: "",
                            assetIconPath: 'images/Moon cloud mid rain.png',
                          ),
                          RoundCard(
                            time: "2 AM",
                            temperature: "18°",
                            precipitation: "",
                            assetIconPath: 'images/Moon cloud fast wind.png',
                          ),
                          RoundCard(
                            time: "3 AM",
                            temperature: "19°",
                            precipitation: "",
                            assetIconPath: 'images/Moon cloud mid rain.png',
                          ),
                          RoundCard(
                            time: "4 AM",
                            temperature: "19°",
                            precipitation: "",
                            assetIconPath: 'images/Moon cloud mid rain.png',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Image(image: AssetImage('images/Map.png')),
                    Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 240,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/Subtract.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 94.0),
                          child: FloatingActionButton(
                            onPressed: () => print('Button Pressed'),
                            backgroundColor: whiteColor,
                            elevation: 10.0,
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(60)),
                            child: const Icon(
                              Icons.add,
                              // here magentaBlueColor will be used
                              color: magentaBlueColor,
                              // color: Color(0xff48319D),
                              size: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Image(image: AssetImage('images/List.png')),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
