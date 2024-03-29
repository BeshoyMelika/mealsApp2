import 'package:flutter/material.dart';

import './Screens/categories_meals_screen.dart';
import './Screens/categories_screen.dart';
import 'Screens/meals_details_screen.dart';
import 'Screens/tap_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w900,
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
               // color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              )),
        ),
        //home: HomePage(),
        initialRoute: "/",
        routes: {
          "/":(context)=>TapScreen(),
          CategoriesMeals.nameRoutes:(ctx)=>CategoriesMeals(),
          MealDetailsScreen.nameRoutes:(ctx)=>MealDetailsScreen(),
        },
        );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: CategoryScreen(),
    );
  }
}
