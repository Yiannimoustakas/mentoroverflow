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
            const ListTile(
              leading: Icon(Icons.assistant),
              title: Text('Flutter Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Flutter is easy and fun.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Talk to Mentor'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('Details'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assistant),
              title: Text('Dart Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Dart'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Talk to Mentor'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('Details'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assistant),
              title: Text('JavaScript Mentor', style: Styles.headlineText),
              subtitle: Text('Learn JavaScript.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Talk to Mentor'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('Details'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assistant),
              title: Text('React Mentor', style: Styles.headlineText),
              subtitle: Text('Learn React.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Talk to Mentor'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('Details'),
                    onPressed: () { /* ... */ },
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assistant),
              title: Text('Angular Mentor', style: Styles.headlineText),
              subtitle: Text('Learn Angular.'),
            ),
            ButtonTheme.bar( // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Talk to Mentor'),
                    onPressed: () { /* ... */ },
                  ),
                  FlatButton(
                    child: const Text('Details'),
                    onPressed: () { /* ... */ },
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
