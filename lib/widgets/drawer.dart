import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:image_picker_flutter/constants/Theme.dart';

import 'package:image_picker_flutter/widgets/drawer-tile.dart';

class NowDrawer extends StatelessWidget {
  final String currentPage;

  NowDrawer({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: NowUIColors.white,
      child: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.85,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Image.asset("assets/icons/ocr_text_sidebar.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: IconButton(
                          icon: Icon(Icons.menu,
                              color: NowUIColors.secondary.withOpacity(0.82),
                              size: 24.0),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
          flex: 2,
          child: ListView(
            padding: EdgeInsets.only(top: 36, left: 8, right: 16),
            children: [
              DrawerTile(
                  icon: FontAwesomeIcons.home,
                  onTap: () {
                    if (currentPage != "Home")
                      Navigator.pushReplacementNamed(context, '/home');
                  },
                  iconColor: NowUIColors.info,
                  title: "Home",
                  isSelected: currentPage == "Home" ? true : false),
              DrawerTile(
                  icon: FontAwesomeIcons.barcode,
                  onTap: () {
                    if (currentPage != "ocr")
                      Navigator.pushReplacementNamed(context, '/home_page');
                  },
                  iconColor: NowUIColors.info,
                  title: "Scan OCR",
                  isSelected: currentPage == "ocr" ? true : false),

              // Profile Submenu
              ExpansionTile(
                leading: Icon(
                  FontAwesomeIcons.user,
                  color: NowUIColors.primary,
                  size: 20,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    color: NowUIColors.primary,
                  ),
                ),
                children: [
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Aldi") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_aldi');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Aldi",
                    isSelected: currentPage == "Profile Aldi",
                  ),
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Didin") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_didin');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Didin",
                    isSelected: currentPage == "Profile Didin",
                  ),
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Anhar") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_anhar');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Anhar",
                    isSelected: currentPage == "Profile Anhar",
                  ),
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Krysna") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_krysna');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Krysna",
                    isSelected: currentPage == "Profile Krysna",
                  ),
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Rizqi") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_rizqi');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Rizqi",
                    isSelected: currentPage == "Profile Rizqi",
                  ),
                  DrawerTile(
                    icon: FontAwesomeIcons.digitalOcean,
                    onTap: () {
                      if (currentPage != "Profile Yusril") {
                        Navigator.pushReplacementNamed(
                            context, '/profile_yusril');
                      }
                    },
                    iconColor: NowUIColors.primary,
                    title: "Profile Yusril",
                    isSelected: currentPage == "Profile Yusril",
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
