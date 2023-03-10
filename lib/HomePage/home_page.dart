import 'package:flutter/material.dart';
import 'package:new_weather_appppppp/Constants/emuns.dart';
import 'package:new_weather_appppppp/Constants/routes.dart';
import 'package:new_weather_appppppp/DetailsPage/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//   late final Future<WeatherModel> snapshot;
//   String cityName = 'mumbai';
//   @override
//   void initState() {
//     super.initState();
//     weatherData = Network().getWeatherInfo(cityName: cityName);
//   }

//   late final WeatherModel snapshot;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorAction(
        selectedMenu: navBarElements.home,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 30.0,
          bottom: 20.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(),
                    ),
                    child: Image.asset(
                      'assets/images/double_arrow.png',
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(),
                  ),
                  child: Image.asset(
                    'assets/images/notification.png',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: SizedBox(
                height: 200.0,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      height: 180.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Monday,10 January',
                            // snapshot.data!.location.localtime,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'New York',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                          //   Text(
                          //     snapshot.current.tempC.toString(),
                          //     style: const TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 40.0,
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          Image.asset(
                            'assets/images/29.png',
                          ),
                          const Text(
                            'Sunny Cloudy',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/images/Cloud 3 zap.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            //
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Next 14 Days',
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DailyForeCaset(
                        image: 'assets/images/Cloud 3 zap.png',
                        text: 'Sunny Day',
                      ),
                      DailyForeCaset(
                          image: 'assets/images/Zaps.png', text: 'Thunder'),
                      DailyForeCaset(
                        image: 'assets/images/Mid snow fast winds.png',
                        text: 'Wind Kph',
                      ),
                    ],
                  ),
                ),
                //
                //
                //
                // Temperature ForeCast
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Temperature',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TempForeCaset(
                          text1: '18*C',
                          image: 'assets/images/Sun cloud little rain.png',
                          text2: '07:00',
                        ),
                        TempForeCaset(
                          text1: '20*C',
                          image: 'assets/images/Cloud 3 zap.png',
                          text2: '09:00',
                        ),
                        TempForeCaset(
                          text1: '23*C',
                          image: 'assets/images/Big rain drops (1).png',
                          text2: '12:00',
                        ),
                        TempForeCaset(
                          text1: '25*C',
                          image: 'assets/images/Cloud 3 zap.png',
                          text2: '15:00',
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavigatorAction extends StatelessWidget {
  const BottomNavigatorAction({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final navBarElements selectedMenu;
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                homePageRoute,
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Vector (5).png',
                  width: 25.0,
                  color: selectedMenu == navBarElements.home
                      ? Colors.black
                      : Colors.black26,
                ),
                // Container(
                //   height: 5.0,
                //   width: 10.0,
                //   decoration: BoxDecoration(
                //     color: index == selectedMenu.index
                //         ? Colors.black
                //         : Colors.white,
                //     shape: BoxShape.circle,
                //   ),
                // ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                detailsPageRoute,
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(),
                Container(
                  height: 35.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Vector (6).png',
                    width: 35,
                    color: selectedMenu == navBarElements.details
                        ? Colors.black
                        : null,
                  ),
                )
                // Container(
                //   height: 5.0,
                //   width: 10.0,
                //   decoration: BoxDecoration(
                //     color: index == selectedMenu.index
                //         ? Colors.black
                //         : Colors.white,
                //     shape: BoxShape.circle,
                //   ),
                // ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                detailsPageRoute,
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/Vector (7).png',
                    width: 35,
                    color: selectedMenu == navBarElements.details
                        ? Colors.black
                        : null,
                  ),
                )
                // Container(
                //   height: 5.0,
                //   width: 10.0,
                //   decoration: BoxDecoration(
                //     color: index == navBarElements.notification
                //         ? Colors.black
                //         : Colors.white,
                //     shape: BoxShape.circle,
                //   ),
                // ),
              ],
            ),
          ),
          GestureDetector(
            // onTap : () {Navigator.of(context).pushNamed();},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Vector (8).png',
                  width: 20.0,
                  //   color:
                  //       selectedMenu == navBarElements.home ? Colors.black : null,
                ),
                // Container(
                //   height: 5.0,
                //   width: 10.0,
                //   decoration: BoxDecoration(
                //     color: index == navBarElements.person
                //         ? Colors.black
                //         : Colors.white,
                //     shape: BoxShape.circle,
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TempForeCaset extends StatelessWidget {
  const TempForeCaset({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.0),
      height: 100.0,
      width: 65.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
          Image.asset(image),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class DailyForeCaset extends StatelessWidget {
  const DailyForeCaset({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 100.0,
      width: 75.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
