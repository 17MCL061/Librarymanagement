import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  // Mock data for demonstration
  List<String> availableBooks = [
    'Don Quixote',
    'Jane Eyre',
    'Moby Dick',
    'The Scarlet Letter',
    "Gulliver's Travels",
    'Don Quixote',
    'Jane Eyre',
    'Moby Dick',
    'The Scarlet Letter',
    "Gulliver's Travels",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: availableBooks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(availableBooks[index]),
          );
        },
      ),
    );
  }
}
