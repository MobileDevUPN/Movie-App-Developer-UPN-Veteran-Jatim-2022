import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String url;
  final double height;
  final double widht;
  const RoundedImage(
      {Key? key, required this.url, required this.height, required this.widht})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.network(
        url,
        height: height,
        width: widht,
        fit: BoxFit.cover,
      ),
    );
  }
}
