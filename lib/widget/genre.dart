import 'package:flutter/material.dart';

class Genre extends StatelessWidget {
  final List<String> genres;
  const Genre({Key? key, required this.genres}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 6,
      runSpacing: 6,
      children: [
        for (var genre in genres) GenreItem(genre: genre),
      ],
    );
  }
}

class GenreItem extends StatelessWidget {
  final String genre;
  const GenreItem({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFB2EBF2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        genre,
        style: const TextStyle(
          color: Color(0xFF3BACD6),
        ),
      ),
    );
  }
}
