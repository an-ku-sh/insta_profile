import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaProfile extends StatelessWidget {
  const InstaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            const Icon(Icons.lock_outline),
            const SizedBox(
              width: 10,
            ),
            Text(
              'an.ku_sh',
              style:
                  GoogleFonts.ubuntu(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 25,
            ),
            const SizedBox(
              width: 100,
            ),
            const Icon(Icons.add_box_rounded),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.reorder,
              size: 32,
            )
          ],
        ),
        // Text(
        //   'an.ku_sh',
        //   style: GoogleFonts.ubuntu(),
        // ),
        // leading: const Icon(Icons.lock_outline),
        backgroundColor: Colors.black,
      ),
      body: Container(),
      backgroundColor: Colors.black,
    );
  }
}
