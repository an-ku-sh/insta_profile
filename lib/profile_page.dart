// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './tab1.dart';
import './tab2.dart';
import 'package:url_launcher/url_launcher.dart';

class InstaProfile extends StatefulWidget {
  const InstaProfile({super.key});

  @override
  State<InstaProfile> createState() => _InstaProfileState();
}

class _InstaProfileState extends State<InstaProfile> {
  //url launcher
  Future<void> _launchUrl(String link) async {
    final Uri _url = Uri.parse(link);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  //Tabs
  final List<Widget> tabs = const [
    Tab(
      icon: Icon(Icons.grid_4x4_outlined),
    ),
    Tab(
      icon: Icon(Icons.android),
    ),
  ];
  //TabView Pages
  final List<Widget> tabBarViews = const [Tab1(), Tab2()];

  //Scaffold
  @override
  Widget build(BuildContext context) {
    //Scaffold
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            children: [
              const SizedBox(width: 3),
              const Icon(Icons.lock_outline),
              const SizedBox(width: 10),
              Text('an.ku_sh',
                  style: GoogleFonts.ubuntu(
                      fontSize: 25, fontWeight: FontWeight.w600)),
              const Icon(Icons.keyboard_arrow_down, size: 25),
              const SizedBox(width: 100),
              const Icon(Icons.add_box_rounded),
              const SizedBox(width: 20),
              const Icon(Icons.reorder, size: 32)
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/pfp.jpg'),
              radius: 45,
            ),
            const SizedBox(height: 10),
            Text(
              'Ankush Behera',
              style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'VSSUT(IT)26',
              style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'I like playing videogames',
              style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 4),
            Text(
              'I kinda like making 3D renders',
              style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _launchUrl('https://www.instagram.com/an.ku_sh/');
                  },
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl('https://twitter.com/AnkushBehera11');
                  },
                  icon: const Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      final Uri mailUrl = Uri(
                        scheme: 'mailto',
                        path: 'ankush41behera@gmail.com',
                      );
                      _launchUrl(mailUrl.toString());
                    },
                    icon: const Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 40,
                    )),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl('https://github.com/an-ku-sh');
                  },
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TabBar(tabs: tabs),
            Expanded(child: TabBarView(children: tabBarViews))
          ],
        ),
      ),
    );
  }
}
