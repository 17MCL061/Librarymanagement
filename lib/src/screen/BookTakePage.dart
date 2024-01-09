import 'package:flutter/material.dart';

class BookTakePage extends StatefulWidget {
  @override
  _BookTakePageState createState() => _BookTakePageState();
}

class _BookTakePageState extends State<BookTakePage> {
  String? selectedBook;
  List<String> availableBooks = [
    'Don Quixote',
    'Jane Eyre',
    'Moby Dick',
    'The Scarlet Letter',
    "Gulliver's Travels",
  ];

  String saveStatus = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: DropdownButton<String>(
                value: selectedBook,
                items: availableBooks.map((book) {
                  return DropdownMenuItem<String>(
                    value: book,
                    child: Text(book),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBook = value;
                  });
                },
                hint: Text('Select a book'),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (selectedBook != null) {
                  saveStatus = 'Book "$selectedBook" selected.';
                } else {
                  saveStatus = 'Please select a book.';
                }

                // Show the status in a snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(saveStatus),
                  ),
                );
              },
              child: Text('Save Selection'),
            ),
          ],
        ),
      ),
    );
  }
}
