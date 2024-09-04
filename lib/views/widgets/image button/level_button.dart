import 'package:flutter/material.dart';
import 'package:math_puzzle/util/constants/string_constants.dart';

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 143,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(currentLevelBgPath),
        ),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          text,
          style: TextStyle(color: Color(0xFFFBAE40), fontSize: 24, shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(-1, 0),
            )
          ]),
        ),
      )),
    );
  }
}
