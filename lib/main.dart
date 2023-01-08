import 'package:flutter/material.dart';
import 'package:new_weather_appppppp/Constants/routes.dart';
import 'package:new_weather_appppppp/DetailsPage/details_page.dart';
import 'package:new_weather_appppppp/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        homePageRoute: (context) => const HomePage(),
        detailsPageRoute: (context) => const DetailsPage(),
      },
      home: const HomePage(),
    );
  }
}
