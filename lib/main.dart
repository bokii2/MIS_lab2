import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/random_joke.dart';
import 'screens/joke_card_by_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/jokes': (context) => JokesByTypeScreen(
          type: ModalRoute.of(context)!.settings.arguments as String,
        ),
        '/random': (context) => RandomJokeScreen(),
      },
    );
  }
}
