import 'package:flutter/material.dart';
import 'package:insta_profile/work_in_progress.dart';
import './profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialBase());
}

class MaterialBase extends StatefulWidget {
  const MaterialBase({super.key});

  @override
  State<MaterialBase> createState() => _MaterialBaseState();
}

class _MaterialBaseState extends State<MaterialBase> {
  //Navigation Bar
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    WIP(),
    WIP(),
    WIP(),
    WIP(),
    InstaProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.black,
                hoverColor: Colors.black,
                backgroundColor: Colors.black,
                gap: 10,
                activeColor: Colors.black,
                iconSize: 20,
                padding: const EdgeInsets.all(9),
                duration: const Duration(milliseconds: 250),
                tabBackgroundColor: Colors.grey[700]!,
                color: Colors.white,
                tabs: const [
                  GButton(icon: FontAwesomeIcons.houseChimney, text: 'Feed'),
                  GButton(icon: FontAwesomeIcons.search, text: 'Explore'),
                  GButton(icon: Icons.add_box_sharp, text: 'Post'),
                  GButton(
                      icon: Icons.video_call_outlined,
                      text: 'Reels',
                      iconSize: 29),
                  GButton(icon: Icons.account_circle, text: 'Profile'),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
