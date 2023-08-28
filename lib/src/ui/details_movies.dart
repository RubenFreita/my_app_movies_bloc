import 'package:flutter/material.dart';
import 'package:my_app_movies_bloc/src/models/item_model.dart';

class DetailsMovies extends StatelessWidget {
  const DetailsMovies({super.key});

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Result;
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title.toString()),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w185${movie.poster_path}',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: 300,
              child: Text(
                movie.overview,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
