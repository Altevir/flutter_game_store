import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_game_store/models/game.dart';
import 'package:flutter_game_store/widgets/platform_available.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'game_rating.dart';

class ContainerGameDetail extends StatefulWidget {
  const ContainerGameDetail({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  State<ContainerGameDetail> createState() => _ContainerGameDetailState();
}

class _ContainerGameDetailState extends State<ContainerGameDetail> {
  Future<void> callUrlVideo(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Error launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage('images/${widget.game.image}'),
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.only(
            left: 15,
            top: 10,
            right: 15,
            bottom: 15,
          ),
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          widget.game.name,
                          style: GoogleFonts.nunitoSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      GameRating(
                        game: widget.game,
                      ),
                      const Spacer(),
                      PlatformAvailable(
                        platforms: widget.game.platforms,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.play,
                      size: 18,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      callUrlVideo(widget.game.urlVideo);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
