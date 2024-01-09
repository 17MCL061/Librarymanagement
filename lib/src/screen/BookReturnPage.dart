import 'package:flutter/material.dart';

class BookReturnPage extends StatefulWidget {
  @override
  _BookReturnPageState createState() => _BookReturnPageState();
}

class _BookReturnPageState extends State<BookReturnPage> {
  // Mock data for demonstration
  List<String> borrowedBooks = [
    'Don Quixote',
    'Jane Eyre',
    'Moby Dick',
    'The Scarlet Letter',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: borrowedBooks.isEmpty
            ? Center(
                child: Text('No books to return.'),
              )
            : ListView.builder(
                itemCount: borrowedBooks.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3.0,
                    child: ListTile(
                      title: Text(borrowedBooks[index]),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Return book logic here
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Success'),
                                content: Text(
                                    'Book "${borrowedBooks[index]}" returned successfully.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      // Remove book from the borrowed list
                                      setState(() {
                                        borrowedBooks.removeAt(index);
                                      });
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Return'),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
