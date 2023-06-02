import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WIP extends StatelessWidget {
  const WIP({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LottieBuilder.asset('lib/assets/wip.json'),
    );
  }
}
