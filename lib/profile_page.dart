import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_profile/work_in_progress.dart';

class InstaProfile extends StatelessWidget {
  const InstaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'an.ku_sh',
          style: GoogleFonts.ubuntu(),
        ),
        leading: const Icon(Icons.lock_outline),
        backgroundColor: Colors.black,
      ),
      body: Container(),
      backgroundColor: Colors.black,
    );
  }
}
