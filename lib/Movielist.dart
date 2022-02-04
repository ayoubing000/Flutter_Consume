import 'package:flutter/material.dart';
import 'package:flutter_api/models/movie.dart';

class Movielist extends StatelessWidget {
  final List<Movie> movies;
  Movielist(Key key, this.movies) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies == null ? 0 : movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(movies[index].name),
              subtitle: Text(movies[index].desciption.toString()),
            ),
          );
        });
  }
}
