import 'package:flutter/material.dart';
import 'package:chaboo/generated/assets.dart';
import 'package:chaboo/utils/app.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Add navigation or functionality here
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align items to the left
          children: [
            Text(
              'Aradığın bir kitap var mı?',
              style: TextStyle(
                fontSize: 22, // Increased font size
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32), // Darker green color
              ),
            ),
            SizedBox(height: 8),
            SearchBar(),
            SizedBox(height: 16),
            CategoryTabs(),
            SizedBox(height: 16), // Space between tabs and grid
            Expanded(child: BookGrid()), // BookGrid displays the books
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'kitap ara',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}

class CategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: TabBar(
        tabs: [
          Tab(text: 'Yeni Eklenenler'),
          Tab(text: 'Sizin İçin Seçtiklerimiz'),
        ],
        indicatorColor: Colors.green,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }
}

class BookGrid extends StatelessWidget {
  final List<Book> books = [
    Book(
      imageUrl: 'assets/images/books/python.jpg',
      title: 'Python',
      author: 'Atıl Samancıoğlu',
    ),
    Book(
      imageUrl: 'assets/images/books/fahrenheit.jpg',
      title: 'Fahrenheit 451',
      author: 'Ray Bradbury',
    ),
    Book(
      imageUrl: 'assets/images/books/tutunamayanlar.jpg',
      title: 'Tutunamayanlar',
      author: 'Oğuz Atay',
    ),
    Book(
      imageUrl: 'assets/images/books/martineden.jpg',
      title: 'Martin Eden',
      author: 'Jack London',
    ),
    Book(
      imageUrl: 'assets/images/books/calikusu.jpg',
      title: 'Çalıkuşu',
      author: 'Reşat Nuri Güntekin',
    ),
    Book(
      imageUrl: 'assets/images/books/arabasevdasi.jpg',
      title: 'Araba Sevdası',
      author: 'Recaizade Mahmud Ekrem',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        childAspectRatio: 0.55, // Adjust aspect ratio for card size
        mainAxisSpacing: 16, // Space between rows
        crossAxisSpacing: 16, // Space between columns
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigate to book detail page (to be implemented)
          },
          child: BookCard(book: books[index]),
        );
      },
    );
  }
}

class Book {
  final String imageUrl;
  final String title;
  final String author;

  Book({
    required this.imageUrl,
    required this.title,
    required this.author,
  });
}

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 280, // Set consistent height for images
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              image: DecorationImage(
                image: AssetImage(book.imageUrl),
                fit: BoxFit.contain, // Display the entire image
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4), // Space between image and title
                Text(book.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Coolvetica')),
                SizedBox(height: 4), // Small space between title and author
                Text(book.author, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
