import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker_flutter/screens/ocr.dart';
import 'package:image_picker_flutter/screens/home.dart';
import 'package:image_picker_flutter/screens/onboarding.dart';
import 'package:image_picker_flutter/screens/profile_aldi.dart';
import 'package:image_picker_flutter/screens/profile_anhar.dart';
import 'package:image_picker_flutter/screens/profile_didin.dart';
import 'package:image_picker_flutter/screens/profile_krysna.dart';
import 'package:image_picker_flutter/screens/profile_rizqi.dart';
import 'package:image_picker_flutter/screens/profile_yusril.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black,
      ),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OCR',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/profile_aldi": (BuildContext context) => new ProfileAldi(),
          "/profile_didin": (BuildContext context) => new ProfileDidin(),
          "/profile_anhar": (BuildContext context) => new ProfileAnhar(),
          "/profile_krysna": (BuildContext context) => new ProfileKrysna(),
          "/profile_rizqi": (BuildContext context) => new ProfileRizqi(),
          "/profile_yusril": (BuildContext context) => new ProfileYusril(),
          "/home_page": (BuildContext context) => new MyPage(),
        });
  }
}
