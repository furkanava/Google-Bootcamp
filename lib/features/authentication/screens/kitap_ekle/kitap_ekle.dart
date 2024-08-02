import 'package:flutter/material.dart';

class KitapEkleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E7D32),
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
              'Ürün Ekle',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    Text(
                      'FOTOĞRAF ÇEK',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.photo_library),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                    Text(
                      'GALERİDEN SEÇ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF2E7D32),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Ürün Başlığı',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText:
                    'Ürün Başlığını Girin: Kürk Mantolu Madonna Yeni Baskı',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Açıklama',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText:
                    'Ürünü birkaç cümleyle açıklayın: Okuyup etkisinden çıkamadığım bir kitap tavsiye ederim.',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Kullanım Durumu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(
                  child: Text('Yeni'),
                  value: 'Yeni',
                ),
                DropdownMenuItem(
                  child: Text('İkinci El'),
                  value: 'İkinci El',
                ),
              ],
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Sayfa Sayısı',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              items: [
                DropdownMenuItem(
                  child: Text('1-100'),
                  value: '1-100',
                ),
                DropdownMenuItem(
                  child: Text('101-200'),
                  value: '101-200',
                ),
                DropdownMenuItem(
                  child: Text('201-300'),
                  value: '201-300',
                ),
                DropdownMenuItem(
                  child: Text('301-400'),
                  value: '301-400',
                ),
                DropdownMenuItem(
                  child: Text('401-500'),
                  value: '401-500',
                ),
                DropdownMenuItem(
                  child: Text('500+'),
                  value: '500+',
                ),
              ],
              onChanged: (value) {},
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
