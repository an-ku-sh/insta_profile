import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WIP extends StatelessWidget {
  const WIP({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            LottieBuilder.asset('lib/assets/wip.json'),
            Text(
              'Work In Progress',
              style: GoogleFonts.satisfy(color: Colors.white, fontSize: 28),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Profile Page -->',
              style: GoogleFonts.satisfy(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
