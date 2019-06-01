import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mentoroverflow/styles.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _languages = [
    {
      "language": 'Dart',
      "background": Colors.purple.shade900,
      "src": 'assets/dart.jpg'
    },
    {
      "language": 'Flutter',
      "background": Colors.blue.shade900,
      "src": 'assets/flutter.png'
    },
    {
      "language": 'React',
      "background": Colors.green.shade900,
      "src": 'assets/react.png'
    }
  ];

  static const _standardPadding = EdgeInsets.only(top: 4, bottom: 4);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    var realidx = Random().nextInt(10).toInt();
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the Profile object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage:
                    NetworkImage("https://randomuser.me/api/portraits/men/$realidx.jpg"),
                maxRadius: 60,
              ),
              Padding(padding: const EdgeInsets.only(top: 4, bottom: 16)),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.title,
              ),
              Padding(padding: const EdgeInsets.only(top: 4, bottom: 16)),
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: Styles.labelValue),
              Padding(padding: const EdgeInsets.only(top: 4, bottom: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Reputation", style: Styles.labelText),
                  Text("1337", style: Styles.labelValue),
                ],
              ),
              Padding(padding: _standardPadding),
              Text("Languages", style: Styles.labelText),
              Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                children: languageChips()
              ),
              Padding(padding: _standardPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Primary Language", style: Styles.labelText),
                  Text("English", style: Styles.labelValue)
                ],
              )
            ],
          ),
        ));
  }

  List<Chip> languageChips() {
    return _languages.map((language){
      return Chip(
                    labelPadding: EdgeInsets.only(left: 8, right: 8),
                    avatar: CircleAvatar(
                      backgroundImage: AssetImage(language['src']),
                        backgroundColor: language['background'],),
                    label: Text(language['language'], style: Styles.chipText,),
                  );
    }).toList();
  }
}
