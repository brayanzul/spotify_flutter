import 'package:flutter/material.dart';
import 'package:spotify_flutter/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function()? onTap;
  final double? size;

  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
    this.onTap,
    this.size = 130,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image),
          )
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(label)
        ],
      ),
    );
  }
}
