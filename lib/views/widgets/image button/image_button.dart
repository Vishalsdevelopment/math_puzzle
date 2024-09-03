import 'package:flutter/material.dart';
import 'package:math_puzzle/util/constants/string_constants.dart';

enum ImageColor { blue, orange }

enum ChildType { image, text }

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.imageColor,
    this.childType = ChildType.image,
    this.imagePath = '',
    this.text = '',
  }) : assert(childType == ChildType.text && text != '');

  final ImageColor imageColor;
  final ChildType childType;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    String imagePath =
        imageColor == ImageColor.blue ? blueButtonPath : orangeButtonPath;

    Widget? child;

    if (childType == ChildType.image) {
      child = Image.asset(imagePath);
    } else {
      child = Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      );
    }

    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
      child: Center(child: child),
    );
  }
}
