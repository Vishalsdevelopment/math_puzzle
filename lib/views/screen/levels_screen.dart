import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_puzzle/views/widgets/builders/scaffold_builder.dart';
import 'package:math_puzzle/views/widgets/image%20button/image_button.dart';

import '../../util/constants/string_constants.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBuilder(
        body: Column(
      children: [
        Image.asset(
          selectPuzzlePath,
          height: 48,
          width: 225,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 25),
        Expanded(
          child: GridView.builder(
            itemCount: 75 ,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 60,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return ImageButton(
                imageColor: ImageColor.blue,
                childType: ChildType.text,
                text: '${index + 1}',
              );
            },
          ),
        ),
      ],
    ));
  }
}
