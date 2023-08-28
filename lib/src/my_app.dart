import 'package:flutter/material.dart';
import 'package:my_app_movies_bloc/src/ui/details_movies.dart';

import 'ui/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/details-movies": (context) => const DetailsMovies(),
      },
    );
  }
}
