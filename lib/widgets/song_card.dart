import 'package:flutter/material.dart';
import 'package:spotify_flutter/views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({super.key, required this.image});

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
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 150,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              'Bad Bunny, Drake, Justin Bieber, Taylor Swift, ...',
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}