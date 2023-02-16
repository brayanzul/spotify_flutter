import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {

  final ImageProvider image;
  final String label;

  const AlbumCard({
    super.key, required this.image, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 130,
          height: 130,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(label)
      ],
    );
  }
}