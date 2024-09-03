import 'package:flutter/material.dart';

import '../../../util/constants/string_constants.dart';

class ScaffoldBuilder extends StatelessWidget {
  const ScaffoldBuilder({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(defaultScaffoldBgPath),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: body,
        ),
      ),
    );
  }
}
