import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {

  final ImageProvider image;
  final String label;
  final Function()? onTap;

  const AlbumCard({
    super.key, 
    required this.image, 
    required this.label, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}