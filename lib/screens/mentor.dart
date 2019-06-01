import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

enum MentorCategory {
  flutter,
  dart,
  javascript
}

class Mentor {
  Mentor({
    @required this.id,
    @required this.name,
    @required this.language,
    @required this.shortDescription,
    @required this.avatar,
    @required this.score
  });

  final int id;
  final String name;
  final String language;
  final String shortDescription;
  final String avatar;
  final int score;
}

