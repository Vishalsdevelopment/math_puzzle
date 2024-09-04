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
    this.height = 46,
    this.width = 44,
    this.fontSize = 24,
    this.textColor = Colors.white,
  }) : assert(childType == ChildType.text && text != '' ||
            childType == ChildType.image && imagePath != '');

  final ImageColor imageColor;
  final ChildType childType;
  final String imagePath;
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    String imagePath =
        imageColor == ImageColor.blue ? blueButtonPath : orangeButtonPath;

    Widget? child;

    if (childType == ChildType.image) {
      child = Image.asset(
        this.imagePath,
        fit: BoxFit.fill,
      );
    } else {
      child = Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: FontWeight.bold),
      );
    }

    print('+++> height: $height');
    print('+++> width: $width');

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
      child: Center(child: child),
    );
  }
}
