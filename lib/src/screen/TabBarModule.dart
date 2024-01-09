import 'package:flutter/material.dart';
import 'package:librarymanagement/src/screen/BookReturnPage.dart';
import 'package:librarymanagement/src/screen/BookTakePage.dart';
import 'package:librarymanagement/src/screen/BooksPage.dart';
import 'package:librarymanagement/src/screen/DashBoarPage.dart';
import 'package:librarymanagement/src/screen/LogOutPage.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key? key}) : super(key: key);

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    MyDashboard(),
    BooksPage(),
    BookTakePage(),
    BookReturnPage(),
    LogoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Library Management'),
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 5,
        onTap: _onTabTapped,
        unselectedLabelStyle: TextStyle(
          color: Colors.black, // Color of the label before selection
        ),
        unselectedItemColor:
            Colors.orange, // Color of the icon before selection
        selectedItemColor: Colors.blue, // Color of the selected item
        selectedLabelStyle: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold, // Style of the selected item label
        ),
        backgroundColor: Colors.red,
        type: BottomNavigationBarType
            .shifting, // Use shifting type for better animation

        selectedFontSize: 14.0, // Set the font size for selected item label
        unselectedFontSize: 14.0, // Set the font size for unselected item label
        showSelectedLabels: true, // Show labels for selected items
        showUnselectedLabels: true, // Show labels for unselected items
        iconSize: 24.0, // Set the icon size
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Take ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_back,
            ),
            label: 'Return',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
