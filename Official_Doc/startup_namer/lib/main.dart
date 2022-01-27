import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

// Main function: starting point
void main() {
  runApp(const MyApp());
}

// Stateless widget: MyApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: Center(
            // child: Text(wordPair.asPascalCase),
            child: RandomWords(),
          ),
        ));
  }
}

// Stateful widget: RandomWords
class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);
  // State: _RandomWordsState
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

// State class
// _var: we can access these variable from anywhere(public variable).
class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[]; // Saves suggested word pairing
  final _biggerFont = const TextStyle(fontSize: 18); // Makes font size larger

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

  // ListView Widget: Build Suggestions
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if(i.isOdd) {
          return const Divider();
        }
        final index = i ~/2; // i is divided by 2 and returns an integer
      },
    );
  }

  // ListTitle Widget
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}


