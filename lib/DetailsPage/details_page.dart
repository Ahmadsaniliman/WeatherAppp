import 'package:flutter/material.dart';
import 'package:new_weather_appppppp/Constants/routes.dart';
import 'package:new_weather_appppppp/HomePage/home_page.dart';
import 'package:new_weather_appppppp/Constants/emuns.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigatorAction(
        selectedMenu: navBarElements.details,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          right: 20.0,
          left: 20.0,
          //   bottom: 25.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        homePageRoute,
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
                        'assets/images/Vector.png',
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
              //
              //
              //
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7.0,
                    horizontal: 10.0,
                  ),
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 50.0,
                          width: 50.0,
                          child: Image.asset('assets/images/Vector (9).png'),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          //   color: Colors.black,
                        ),
                        hintText: 'Search Location'),
                  ),
                ),
              ),
              //
              //
              //
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Next Week',
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
                        text2: '7:00',
                      ),
                      TempForeCaset(
                        text1: '28*C',
                        image: 'assets/images/Cloud 3 zap.png',
                        text2: '14:00',
                      ),
                      TempForeCaset(
                        text1: '21*C',
                        image: 'assets/images/Big rain drops (1).png',
                        text2: '3:50',
                      ),
                      TempForeCaset(
                        text1: '7*C',
                        image: 'assets/images/Cloud 3 zap.png',
                        text2: '49:00',
                      ),
                    ],
                  )
                ],
              ),
              //
              //
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Potential Weather',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '29*',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              RichText(
                                text:
                                    const TextSpan(text: 'Monday\n18 May 2023'),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/Sun cloud little rain.png',
                          ),
                        ],
                      ),
                      Container(
                        height: 3.0,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '29*',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                RichText(
                                  text: const TextSpan(
                                      text: 'Monday\n18 May 2023'),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/Cloud 3 zap (3).png',
                              width: 70.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 3.0,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '29*',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              RichText(
                                text:
                                    const TextSpan(text: 'Monday\n18 May 2023'),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/Big rain drops (2).png',
                            width: 70.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
