import 'package:flutter/material.dart';
import 'package:my_app_movies_bloc/src/blocs/movies_bloc.dart';
import 'package:my_app_movies_bloc/src/models/item_model.dart';

class MoviesList extends StatelessWidget {
  MoviesList({super.key, required this.snapshot});
  final AsyncSnapshot<ItemModel> snapshot;
  final bloc = MoviesBloc();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        itemCount: snapshot.data!.results.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://image.tmdb.org/t/p/w185${snapshot.data!.results[index].poster_path}',
                      //fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                "/details-movies",
                arguments: snapshot.data!.results[index],
              );
            },
          );
        });
  }
}
