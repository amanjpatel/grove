import 'package:flutter/material.dart';
import 'package:accountability/components/screen_components/app_bar.dart';
import 'package:accountability/components/screen_components/left_drawer.dart';
import 'package:accountability/components/screen_components/tab_bar.dart';
import 'package:accountability/components/screen_components/footer.dart';

class Screen extends StatefulWidget {
  @override
  State createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget build(BuildContext context) {
    Key _drawerKey = new GlobalKey();
    MediaQueryData queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height - kToolbarHeight;
    return Scaffold(
      key: _drawerKey,

      body: Center(
          child: SingleChildScrollView(
              child: Column(
        children: [
          buildAppBar("Issue Page", context, _drawerKey),
          TabBarScreen(),
          buildFooter()
        ],
      ))),

      // appBar: buildAppBar("Issue Page", context, _drawerKey),
      // body: Center(
      //     child: SingleChildScrollView(
      //         child: Column(children: [
      //   TabBarScreen(),
      //   //Transform(
      //   //  transform: Matrix4.identity()..scale(1),
      //   //child: buildIssue(screenWidth, screenHeight, sampleIssue))
      //   buildFooter()
      // ]))),
      drawer: buildDrawers(context),
    );
  }
}
