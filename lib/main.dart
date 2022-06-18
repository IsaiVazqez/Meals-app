import 'package:flutter/material.dart';
import 'package:meals_app/features/categories/presentation/pages/meal_detail_screen.dart';
import 'package:meals_app/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals App',
      initialRoute: 'home',
      routes: appRoutes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 130, 162, 255),
          secondary: Color(0xFFFFC107),
        ),
        canvasColor: const Color.fromARGB(255, 230, 236, 255),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
    );
  }
}
