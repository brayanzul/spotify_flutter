import 'package:flutter/material.dart';
import 'package:spotify_flutter/widgets/album_card.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;
  const AlbumView({ super.key, required this.image,});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  late final ImageProvider image;

  //_AlbumViewState(this.image);
  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        print(imageSize);
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if(scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        print(scrollController.offset);
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 26;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Opacity(
                opacity: imageOpacity.clamp(0, 1.0),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      offset: const Offset(0, 20),
                      blurRadius: 32,
                      spreadRadius: 16,
                    )
                  ]),
                  child: Image(
                    image: widget.image,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 100)
            ]),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ophelia es una película británico-estadounidense histórica de drama romántico de 2018, dirigida por Claire McCarthy, escrita por Semi Chellas y basada en el personaje homónimo de William Shakespeare y la novela de Lisa Klein.',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image(
                                      image:  widget.image,
                                      width: 32,
                                      height: 32,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text('Spotify')
                                  ],
                                ),
                                const SizedBox(height: 16),
                                const Text('1,888,132 Likes 5h 3m'),
                                const SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.favorite),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ophelia es una joven impetuosa que forma parte de las personas de confianza de la reina Gertrudis en el palacio de Elsinore. Su personalidad no pasa desapercibida ante los ojos del príncipe Hamlet, a quien conquista rápidamente. Después del asesinato del rey.',
                        ),
                        const SizedBox(height: 32),
                        Text(
                          'You might also like',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: 'Devils Gun',
                                image: const AssetImage('assets/Album3.jpg'), 
                                onTap: () {}, 
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: 'New Artist',
                                image: const AssetImage('assets/Album14.jpg'), 
                                onTap: () {}, 
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: 'Blaxk Hole',
                                image: const AssetImage('assets/Album16.jpg'), 
                                onTap: () {}, 
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: 'The Weeknd',
                                image: const AssetImage('assets/Album10.jpg'), 
                                onTap: () {}, 
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: 'Silence',
                                image: const AssetImage('assets/Album7.jpg'), 
                                onTap: () {}, 
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: 'Remix',
                                image: const AssetImage('assets/Album9.jpg'), 
                                onTap: () {}, 
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // App bar
          Positioned(
            child: Container(
              child: SafeArea(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  color: showTopBar 
                    ? Colors.blueAccent.withOpacity(1) 
                    : Colors.blueAccent.withOpacity(0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  child: SafeArea(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.keyboard_arrow_left,
                                size: 35,
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 250),
                            opacity: showTopBar ? 1 : 0,
                            child: Text(
                              'Ophelia',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 
                              80 - containerHeight.clamp(120.0, double.infinity),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    width: 64,
                                    height: 64,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff14D860),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      size: 38,
                                    ),
                                  ),
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: const Icon(
                                      Icons.shuffle,
                                      color: Colors.black,
                                      size: 14,
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
