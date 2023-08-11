import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            labelText: 'Label Text',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Search Page',
          ),
        ),
      ),
    );
  }
}
