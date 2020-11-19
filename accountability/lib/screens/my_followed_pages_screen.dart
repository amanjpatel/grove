import 'package:accountability/styles.dart';
import 'package:accountability/util/sample_data.dart';
import 'package:flutter/material.dart';
import 'package:accountability/components/screen_components/app_bar.dart';
import 'package:accountability/components/screen_components/left_drawer.dart';
import 'package:accountability/components/page_summary_card.dart';

class MyFollowedPagesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Key _drawerKey = new GlobalKey();
    MediaQueryData queryData = MediaQuery.of(context);
    double screenWidth = queryData.size.width;
    double screenHeight = queryData.size.height - kToolbarHeight;
    return Scaffold(
      key: _drawerKey,
      appBar: buildAppBar("Dashboard", context, _drawerKey),
      body: _buildBody(screenWidth, screenHeight),
      drawer: buildDrawers(context),
    );
  }
}

Widget _buildBody(screenWidth, screenHeight) {
  var numColumns = screenWidth ~/ (400 + 32);
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Followed Pages", style: title2())),
          Expanded(
            child: GridView.count(
                childAspectRatio: 3 / 2,
                crossAxisCount: numColumns,
                mainAxisSpacing: 0,
                children: [
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  _followedPage(sampleIssuePage),
                  // Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  //     child: ElevatedButton(
                  //         child: Text("Add a Leader"), onPressed: () {}))
                ]),
          )
        ],
      ));
}

Widget _followedPage(page) {
  return buildSummaryCard(page);
}
