import 'package:flutter/material.dart';
import 'package:spotify_flutter/views/album_view.dart';
import 'package:spotify_flutter/widgets/album_card.dart';
import 'package:spotify_flutter/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              color: Color(0xFf1c7A74),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ])),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recently Played',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.history),
                              SizedBox(width: 10),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: const [
                          AlbumCard(
                            label: 'Davils Gun',
                            image: AssetImage('assets/Album3.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Battle Songs',
                            image: AssetImage('assets/Album2.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Rebirth',
                            image: AssetImage('assets/Album5.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Ophelia',
                            image: AssetImage('assets/Album4.jpg'), 
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Pain',
                            image: AssetImage('assets/Album12.jpg'), 
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Anthology',
                            image: AssetImage('assets/Album14.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Pop Remix',
                            image: AssetImage('assets/Album10.jpg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Good Evening',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                label: 'Top 50 - Global',
                                image: AssetImage('assets/Top50.jpeg'),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: 'Davils Gun',
                                image: AssetImage('assets/Album3.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                label: 'Sound Wave',
                                image: AssetImage('assets/Album13.jpg'),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: 'Battle Songs',
                                image: AssetImage('assets/Album2.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                label: 'Artist Name',
                                image: AssetImage('assets/Album1.jpg'),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: 'Run It',
                                image: AssetImage('assets/Album6.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                label: 'Silence',
                                image: AssetImage('assets/Album7.jpg'),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: 'Jongho Baek',
                                image: AssetImage('assets/Album8.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: const [
                              RowAlbumCard(
                                label: 'Pop Remix',
                                image: AssetImage('assets/Album10.jpg'),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: 'Anthology',
                                image: AssetImage('assets/Album14.jpg'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Based on your resent listening',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(image: AssetImage('assets/Album9.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album1.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album10.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album13.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album16.jpg')),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Recommendad Radio',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              SongCard(image: AssetImage('assets/Album15.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album16.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album12.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album10.jpg')),
                              SizedBox(
                                height: 10,
                              ),
                              SongCard(image: AssetImage('assets/Album9.jpg')),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}
