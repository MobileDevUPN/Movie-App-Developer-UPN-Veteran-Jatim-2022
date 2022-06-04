import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screen/detail_movie_screen.dart';
import 'package:movie_app/widget/rating_bar.dart';
import 'package:movie_app/widget/rounded_image.dart';

import 'genre.dart';

class UpcomingMovieItem extends StatelessWidget {
  final Movie upcomingMovie;
  const UpcomingMovieItem({Key? key, required this.upcomingMovie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailMovieScreen(movie: upcomingMovie);
        }));
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Row(
          children: [
            RoundedImage(
              url: upcomingMovie.posterPath,
              height: 120,
              widht: 100,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    upcomingMovie.title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Genre(genres: upcomingMovie.genres),
                  const SizedBox(
                    height: 8,
                  ),
                  Rating(rating: upcomingMovie.rating)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
