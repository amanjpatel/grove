import 'package:flutter/material.dart';
import 'package:accountability/components/app_bar.dart';
import 'package:accountability/components/left_drawer.dart';
import 'package:accountability/components/sign_in_dialog.dart';
import 'package:accountability/components/sign_up_dialog.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    Key _drawerKey = GlobalKey();
    final AlertDialog dialogSignUp = signUpDialog();
    final AlertDialog dialogSignIn = signInDialog();
    return Scaffold(
        key: _drawerKey,
        appBar: buildAppBar("Home", context, _drawerKey),
        drawer: buildDrawers(context),
        body: Center(
            child: Container(
                child: Column(children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Welcome to The Accountability App'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "A place where you can do x,y,z",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.left,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          showDialog<void>(
                              context: context,
                              builder: (context) => dialogSignIn);
                        },
                        child: Text("Sign In")),
                    ElevatedButton(
                        onPressed: () {
                          showDialog<void>(
                              context: context,
                              builder: (context) => dialogSignUp);
                        },
                        child: Text("Sign Up")),
                  ],
                ),
              ],
            ),
          ),
          issueList()
        ]))));
  }
}

Widget issueList() {
  return Column(children: [
    Card(
        child: Column(children: [
      ListTile(
          title: Text("Trending Issue #1"),
          subtitle: Text("Some things about Trending Issue #1")),
    ])),
    Card(
        child: Column(children: [
      ListTile(
          title: Text("Trending Issue #2"),
          subtitle: Text("Some things about Trending Issue #2")),
    ])),
    Card(
        child: Column(children: [
      ListTile(
          title: Text("Trending Issue #3"),
          subtitle: Text("Some things about Trending Issue #3")),
    ])),
  ]);
}
