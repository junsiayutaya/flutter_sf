import 'package:flutter/material.dart';

import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

// import 'package:standard_searchbar/standard_searchbar.dart';

void main() => runApp(const rawr());

class rawr extends StatelessWidget {
  const rawr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const SizedBox(
          width: double.infinity,
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              SizedBox(
                width: 360,
                child: StandardSearchAnchor(
                  searchBar: StandardSearchBar(
                    bgColor: Colors.white,
                  ),
                  suggestions: StandardSuggestions(
                    suggestions: [
                      StandardSuggestion(text: 'top 10 artist right now !! '),
                      StandardSuggestion(text: 'sabrina carpenter'),
                      StandardSuggestion(text: 'chapple roan'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // backgroundColor: Colors.black12,
        backgroundColor: const Color(0xFF12202F),
      ),
    );
  }
}
