import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
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
        if(containerHeight < 0) {
          containerHeight = 0;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      offset: const Offset(0, 20),
                      blurRadius: 32,
                      spreadRadius: 16,
                    )
                  ]),
                  child: Image(
                    image: const AssetImage('assets/Album4.jpg'),
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 100)
              ]
            ),
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
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/Logo.png'),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Spotify')
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
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 1000,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
