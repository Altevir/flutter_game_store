import 'package:flutter/material.dart';

import '../models/game.dart';

class GameRating extends StatelessWidget {
  const GameRating({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: game.classification,
        itemBuilder: (_, __) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 2,
            ),
            child: Icon(
              Icons.star,
              size: 14,
              color: Color(0xffF9B300),
            ),
          );
        },
      ),
    );
  }
}
