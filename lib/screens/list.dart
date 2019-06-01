// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentoroverflow/screens/styles.dart';

class WrapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("What language do you need help in"),
        ),
        body: ListScreen()
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Image(image: new AssetImage("assets/flutter.png")),
              ),
              title: Text('Flutter Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Flutter is easy and fun.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Find Mentor'),
                    onPressed: () { Navigator.pushNamed(context, '/mentor_list');  },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Image(image: new AssetImage("assets/dart.jpg")),
              ),
              title: Text('Dart Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Dart'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Find Mentor'),
                    onPressed: () { Navigator.pushNamed(context, '/mentor_list'); },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Image(image: new AssetImage("assets/kotlin.png")),
              ),
              title: Text('Kotlin Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Kotlin.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Find Mentor'),
                    onPressed: () { Navigator.pushNamed(context, '/mentor_list');  },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Image(image: new AssetImage("assets/react.png")),
              ),
              title: Text('React Mentor', style: Styles.headlineText),
              subtitle: Text('Learn React.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Find Mentor'),
                    onPressed: () { Navigator.pushNamed(context, '/mentor_list');  },
                  ),
                ],
              ),
            ),
            ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: new Image(image: new AssetImage("assets/swift.png")),
              ),
              title: Text('Swift Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Swift.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Find Mentor'),
                    onPressed: () { Navigator.pushNamed(context, '/mentor_list'); },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


class MentorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
