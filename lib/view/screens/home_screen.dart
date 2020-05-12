import 'package:flutter/material.dart';
import 'package:secondtry/view/pages/animation_screen.dart';
import 'package:secondtry/view/pages/head_line_page.dart';
import 'package:secondtry/view/pages/movie_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int _currentIndex=0;
  final _page=[
    HeadLinePage(),
    MovieList(),
    AnimationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: _page[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: const Icon(Icons.movie),
                title: const Text("トップ動画")),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                title: const Text("動画一覧")),
            BottomNavigationBarItem(
                icon: const Icon(Icons.info),
                title: const Text("この動画について")),
          ],
          onTap:(index){
            setState(() {
              _currentIndex=index;
            });
          },
        ),
      ),
    );
  }
}
