import 'package:flutter/material.dart';
import 'package:chaboo/features/authentication/screens/search/search.dart';
import 'package:chaboo/features/authentication/screens/messages/messages.dart';
import 'package:chaboo/features/authentication/screens/kitap_ekle/kitap_ekle.dart';
import 'package:chaboo/features/authentication/screens/profile/profile.dart';
import 'package:chaboo/features/authentication/screens/detailed_book/detailed_book.dart';
import 'package:chaboo/utils/book.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePageContent(),
    SearchScreen(),
    MessagesScreen(),
    KitapEkleScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Chaboo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mesajlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Kitap Ekle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aradığın bir kitap var mı?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32),
              ),
            ),
            SizedBox(height: 8),
            SearchBar(),
            SizedBox(height: 16),
            CategoryTabs(),
            SizedBox(height: 16),
            Expanded(child: BookGrid()),
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
      comment: 'İyi durumda, çok kaliteli bir kitap, c# kitabıyla takas olur',
    ),
    Book(
      imageUrl: 'assets/images/books/fahrenheit.jpg',
      title: 'Fahrenheit 451',
      author: 'Ray Bradbury',
      comment:
          'Kitapların yasaklandığı bir gelecekte geçen distopik bir roman.',
    ),
    Book(
      imageUrl: 'assets/images/books/tutunamayanlar.jpg',
      title: 'Tutunamayanlar',
      author: 'Oğuz Atay',
      comment: 'Varoluşsal temaları ele alan bir Türk edebiyatı klasiği.',
    ),
    Book(
      imageUrl: 'assets/images/books/martineden.jpg',
      title: 'Martin Eden',
      author: 'Jack London',
      comment:
          'Zorluklarla mücadele eden bir yazarın yarı otobiyografik hikayesi.',
    ),
    Book(
      imageUrl: 'assets/images/books/calikusu.jpg',
      title: 'Çalıkuşu',
      author: 'Reşat Nuri Güntekin',
      comment: '20. yüzyıl başlarında Türkiye\'de geçen romantik bir roman.',
    ),
    Book(
      imageUrl: 'assets/images/books/arabasevdasi.jpg',
      title: 'Araba Sevdası',
      author: 'Recaizade Mahmud Ekrem',
      comment:
          'Osmanlı seçkinlerinin aşırılıklarını eleştiren hicivli bir roman.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: books.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailedBookScreen(book: books[index]),
              ),
            );
          },
          child: BookCard(book: books[index]),
        );
      },
    );
  }
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
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              image: DecorationImage(
                image: AssetImage(book.imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(book.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'Coolvetica')),
                SizedBox(height: 4),
                Text(book.author, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
