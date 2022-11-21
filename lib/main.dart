import 'package:flutter/material.dart';
import 'package:flutter_03/screens/categories_screen.dart';
import 'package:flutter_03/screens/category_meals_screen.dart';
import 'package:flutter_03/screens/meal_detail_screen.dart';
import 'package:flutter_03/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 03',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: const ColorScheme.light().copyWith(
            secondary: Colors.amber,
          ),
          canvasColor: const Color.fromARGB(255, 255, 254, 229),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      // home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute is used if route name is not registered in the above routes: map
      onGenerateRoute: (routeSettings) {
        // alternative approach to handle routes, for example if the rout names are generated dynamically
        if (routeSettings.name == CategoryMealsScreen.routeName) {
          return MaterialPageRoute(builder: (bContext) => CategoryMealsScreen());
        } else if (routeSettings.name == MealDetailScreen.routeName) {
          return MaterialPageRoute(builder: (bContext) => MealDetailScreen());
        }
        return MaterialPageRoute(builder: (bContext) => CategoriesScreen());
      },
      onUnknownRoute: (ctx) => MaterialPageRoute(builder: (bContext) => CategoriesScreen()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter 03"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Meals"),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
