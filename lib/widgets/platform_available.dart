import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlatformAvailable extends StatelessWidget {
  const PlatformAvailable({
    Key? key,
    required this.platforms,
  }) : super(key: key);

  final List<String> platforms;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      child: ListView.builder(
        itemCount: platforms.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          return Row(
            children: [
              Visibility(
                visible: platforms[index].contains('android'),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: FaIcon(
                    FontAwesomeIcons.android,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Visibility(
                visible: platforms[index].contains('apple'),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: FaIcon(
                    FontAwesomeIcons.apple,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Visibility(
                visible: platforms[index].contains('playstation'),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: FaIcon(
                    FontAwesomeIcons.playstation,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Visibility(
                visible: platforms[index].contains('xbox'),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: FaIcon(
                    FontAwesomeIcons.xbox,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Visibility(
                visible: platforms[index].contains('windows'),
                child: const FaIcon(
                  FontAwesomeIcons.windows,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
