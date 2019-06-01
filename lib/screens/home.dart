// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mentot Overflow"),
        ),
        body: ListScreen()
    );

//    return CupertinoTabScaffold(
//      tabBar: CupertinoTabBar(items: [
//        BottomNavigationBarItem(
//          icon: Icon(CupertinoIcons.home),
//          title: Text('Home'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(CupertinoIcons.book),
//          title: Text('Mentor'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(CupertinoIcons.search),
//          title: Text('Search'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(CupertinoIcons.settings),
//          title: Text('Settings'),
//        ),
//      ]),
//      tabBuilder: (context, index) {
//        if (index == 0) {
//          return ListScreen();
//        }  else {
//          return MentorScreen();
//        }
//      },
//    );
  }
}
