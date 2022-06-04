import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/widget/genre.dart';
import 'package:movie_app/widget/rating_bar.dart';

class DetailMovieScreen extends StatelessWidget {
  final Movie movie;
  const DetailMovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  movie.backdropPath,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Genre(genres: movie.genres),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Rating(
                    rating: movie.rating,
                    itemSize: 24.0,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    movie.description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF909090),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
