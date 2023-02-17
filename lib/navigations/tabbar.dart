import 'package:flutter/material.dart';
import 'package:spotify_flutter/views/home.dart';
import 'package:spotify_flutter/views/library.dart';
import 'package:spotify_flutter/views/profile.dart';
import 'package:spotify_flutter/views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});


  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _seletedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedTab,
        onTap: (index) {
        setState(() {
          _seletedTab = index;
        });
      },
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined), 
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music), 
          label: 'Library'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: 'Profile'
        ),
      ],),
      body: Stack(
        children: [
          renderView(
            0, 
            const HomeView()
          ),
          renderView(
            1, 
            const SearchView()
          ),
          renderView(
            2, 
            const LibraryView()
          ),
          renderView(
            3, 
            const PerfileView()
          ),
        ],
      )
    );
  }

  Widget renderView(int tabIndex, Widget view) {

    return IgnorePointer(
      ignoring: _seletedTab != tabIndex,
      child: Opacity(
        opacity: _seletedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }

}
