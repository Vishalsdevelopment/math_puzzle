import 'package:flutter/material.dart';
import 'package:math_puzzle/util/constants/string_constants.dart';
import 'package:math_puzzle/views/widgets/builders/scaffold_builder.dart';
import 'package:math_puzzle/views/widgets/image%20button/image_button.dart';
import 'package:math_puzzle/views/widgets/image%20button/level_button.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBuilder(
      body: Column(
        children: [
          // Row
          // skip,  current puzzle, hint

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageButton(
                imageColor: ImageColor.orange,
                imagePath: skipPath,
              ),
              LevelButton(
                text: 'Level 1',
              ),
              ImageButton(
                imageColor: ImageColor.orange,
                imagePath: hintPath,
              ),
            ],
          ),

          // question board
          SizedBox(height: 26),

          Container(
            height: 398,
            width: 336,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              questionBgPath,
            ))),
            child: Image.asset(
              'assets/image/questions/1.png',
              height: 300,
              width: 197,
            ),
          ),

          // input
          SizedBox(height: 26),
          Image.asset(
            inputPath,
            height: 56,
            width: double.infinity,
          ),

          // digit grid
          SizedBox(height: 26),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) {
              return ImageButton(
                imageColor: ImageColor.orange,
                childType: ChildType.text,
                textColor: Colors.black,
                fontSize: 28,
                text: '${(index+1) %10}',
              );
            },
          ),
          // submit
          SizedBox(height: 26),
          LevelButton(
            text: 'Submit',
          ),
        ],
      ),
    );
  }
}
