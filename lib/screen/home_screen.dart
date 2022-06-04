import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/widget/popular_movie_item.dart';
import 'package:movie_app/widget/upcoming_movie_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 18.0),
              child: Text(
                "Moviez",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 24.0),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularMovieList.length,
                itemBuilder: (context, index) =>
                    PopularMovieItem(popularMovie: popularMovieList[index]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Upcoming",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            for (var upcomingMovie in upcomingMovieList)
              UpcomingMovieItem(upcomingMovie: upcomingMovie)
          ],
        ),
      ),
    );
  }
}
