import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_game_store/models/game.dart';
import 'package:flutter_game_store/repositories/game_repository.dart';
import 'package:flutter_game_store/widgets/container_game_detail.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final List<Game> listGames = GameRepository.listGames;
  int _selectedIndex = 0;
  late final PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
      viewportFraction: .75,
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1200,
      ),
    );

    _animation = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    for (var game in listGames) {
      precacheImage(AssetImage('images/${game.imageBackground}'), context);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          FadeTransition(
            opacity: _animation,
            child: Container(
              height: mediaQuerySize.height,
              width: mediaQuerySize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'images/${listGames[_selectedIndex].imageBackground}',
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: SizedBox(
                  height: mediaQuerySize.height,
                  width: mediaQuerySize.width,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: mediaQuerySize.width,
                height: mediaQuerySize.height * 0.45,
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  itemCount: listGames.length,
                  itemBuilder: (_, int index) {
                    return AnimatedScale(
                      duration: const Duration(milliseconds: 750),
                      scale: index == _selectedIndex ? 1 : 0.8,
                      child: ContainerGameDetail(game: listGames[index]),
                    );
                  },
                  onPageChanged: (value) {
                    setState(() {
                      _selectedIndex = value;
                      if (_animationController.isCompleted) {
                        _animationController.reset();
                        _animationController.forward();
                      }
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Text(
                  listGames[_selectedIndex].description,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
