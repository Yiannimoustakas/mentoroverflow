
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mentoroverflow/data/messageData.dart';
import 'package:mentoroverflow/models/developer.dart';
import 'package:mentoroverflow/profile.dart';

class MOSearch extends StatefulWidget {
  
  @override
  _MOSearchState createState() => _MOSearchState();
}


class CustomSearchDelegate extends SearchDelegate {
  final List<String>  _suggList = List<String>.generate(200, (int i) => i.toString());
  final List<int> _data = List<int>.generate(200, (int i) => i);
  final List<int> _history = <int>[123,123123,38348];

  final StreamController ctrl = StreamController();

  @override
  ThemeData appBarTheme(BuildContext ctx){
    assert(ctx != null);

    final ThemeData theme = Theme.of(ctx);
    assert(theme != null);

    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
        ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Profile(title: '');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    if (query.length <= 3){
      return ListTile(
        title: Text('enter more than 3 letters')
      );
    }

    return _ProfileSuggestion(
      suggestions: _suggList,
      query: '', 
      onSelected: (String sugg) {
        debugPrint('here i am $sugg');
        Navigator.pushNamed(context, '/profile');
        // showResults(context);
      }
    );
  }
  
}

class _ProfileSuggestion extends StatelessWidget {
  const _ProfileSuggestion({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, i) {
        final String sglSugg = suggestions[i];
        return ListTile(
          title: Text('Profile Box $sglSugg'),
          onTap: () {
            onSelected(sglSugg);
          }
        );
      },

    );
    
  }
}

class _MOSearchState extends State<MOSearch> {

  Widget SearchAppBar(BuildContext ctx) {
    return SliverAppBar( 
      pinned: true,   
      title: Text('Search mentor'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            return showSearch(
              context: ctx,
              delegate: CustomSearchDelegate()
            );
          },
        )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (ctx , innerBox) {
            return <Widget>[
              this.SearchAppBar(ctx),
            ];
          },
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, idx) {
              
              Developer dev = (idx < 2) ? developers[idx]: Developer(devKey: '$idx', devName: 'DevName - ${idx}');
              
              return ListTile(
                title: Text('DEV: ${dev.devName}'),
                onTap: (){
                  Navigator.pushNamed(context, '/profile/${dev.devKey}');
                },
              );
            },
          )
        )
       ),
    );
  }
}