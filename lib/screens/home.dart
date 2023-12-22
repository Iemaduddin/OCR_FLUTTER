import 'package:flutter/material.dart';

import 'package:image_picker_flutter/constants/Theme.dart';

//widgets
import 'package:image_picker_flutter/widgets/navbar.dart';
import 'package:image_picker_flutter/widgets/card-horizontal.dart';
import 'package:image_picker_flutter/widgets/card-small.dart';
import 'package:image_picker_flutter/widgets/drawer.dart';

// import 'package:image_picker_flutter/screens/product.dart';

final Map<String, Map<String, String>> homeCards = {
  "Aldi": {
    "title":
        "Arainal Aldiansyah. Aku Aldi. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
    "image":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  "Didin": {
    "title": "Iemaduddin. Aku Didin. Lorem ipsum dolor sit.",
    "image":
        "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
  },
  "Anhar": {
    "title": "Kholid Maulidi. Aku Anhar. Lorem ipsum dolor.",
    "image":
        "https://raw.githubusercontent.com/creativetimofficial/public-assets/master/now-ui-pro-react-native/bg40.jpg"
  },
  "Krysna": {
    "title": "Krysna Rachmat. Aku Krysna. Lorem ipsum dolor sit.",
    "image":
        "https://images.unsplash.com/photo-1536686763189-829249e085ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=705&q=80"
  },
  "Rizqi": {
    "title": "Rizqi Rohmatul Huda. Aku Rizqi. Lorem ipsum .",
    "image":
        "https://raw.githubusercontent.com/creativetimofficial/public-assets/master/now-ui-pro-react-native/project21.jpg"
  },
  "Yusril": {
    "title":
        "Yusril Ihza. Aku yusril. Lorem ipsum dolor sit amet consectetur adipisicing elit.",
    "image":
        "https://raw.githubusercontent.com/creativetimofficial/public-assets/master/now-ui-pro-react-native/project21.jpg"
  }
};

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        title: "Home",
        searchBar: true,
        // categoryOne: "Trending",
        // categoryTwo: "Fashion",
        getCurrentPage: () {},
        searchController: TextEditingController(),
        searchOnChanged: (String value) {},
        tags: [],
      ),
      backgroundColor: NowUIColors.bgColorScreen,
      drawer: NowDrawer(currentPage: "Home"),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: CardHorizontal(
                  cta: "View Profile",
                  title: homeCards["Aldi"]?['title'] ?? "",
                  img: homeCards["Aldi"]?['image'] ?? "",
                  tap: () {
                    Navigator.pushNamed(context, '/profile_aldi');
                  },
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSmall(
                    cta: "View Profile",
                    title: homeCards["Didin"]?['title'] ?? "",
                    img: homeCards["Didin"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_didin');
                    },
                  ),
                  CardSmall(
                    cta: "View Profile",
                    title: homeCards["Anhar"]?['title'] ?? "",
                    img: homeCards["Anhar"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_anhar');
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardSmall(
                    cta: "View Profile",
                    title: homeCards["Krysna"]?['title'] ?? "",
                    img: homeCards["Krysna"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_krysna');
                    },
                  ),
                  CardSmall(
                    cta: "View Profile",
                    title: homeCards["Rizqi"]?['title'] ?? "",
                    img: homeCards["Rizqi"]?['image'] ?? "",
                    tap: () {
                      Navigator.pushNamed(context, '/profile_rizqi');
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              CardHorizontal(
                cta: "View Profile",
                title: homeCards["Yusril"]?['title'] ?? "",
                img: homeCards["Yusril"]?['image'] ?? "",
                tap: () {
                  Navigator.pushNamed(context, '/profile_yusril');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
