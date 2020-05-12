import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _textEditingController=TextEditingController();
  final ValueChanged onSubmitted;
  SearchBar({this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(const Radius.circular(30.0))
      ),
      child: TextField(
        onSubmitted: onSubmitted,
        controller: _textEditingController,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: '都道府県を入れてください',
        ),
      ),
    );
  }
}
