import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screen/detail_movie_screen.dart';
import 'package:movie_app/widget/rating_bar.dart';
import 'package:movie_app/widget/rounded_image.dart';

import 'genre.dart';

class PopularMovieItem extends StatelessWidget {
  final Movie popularMovie;
  const PopularMovieItem({Key? key, required this.popularMovie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailMovieScreen(movie: popularMovie);
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 16.0),
        width: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RoundedImage(
              url: popularMovie.backdropPath,
              height: 170,
              widht: double.infinity,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popularMovie.title,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Genre(genres: popularMovie.genres)
                    ],
                  ),
                ),
                Rating(rating: popularMovie.rating)
              ],
            )
          ],
        ),
      ),
    );
  }
}
