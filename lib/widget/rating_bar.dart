import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatelessWidget {
  final double rating;
  final double itemSize;
  const Rating({Key? key, required this.rating, this.itemSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      onRatingUpdate: (newValue) => {},
      itemBuilder: (context, index) => const Icon(
        Icons.star_rounded,
        color: Color(0xFFF6AC33),
      ),
      direction: Axis.horizontal,
      initialRating: rating,
      unratedColor: const Color(0xFF9E9E9E),
      itemCount: 5,
      itemSize: itemSize,
      glowColor: const Color(0xFFF6AC33),
    );
  }
}
