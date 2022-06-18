import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    const _biggerFont = TextStyle(fontSize: 18);
    final _generatedWords = generateWordPairs();
    return ListView.builder(
      itemBuilder: ((context, i) {
        if (i.isOdd) {
          return const Divider(
            thickness: 10,
          );
        }
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(_generatedWords.take(10));
        }
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
        );
      }),
    );
  }
}
