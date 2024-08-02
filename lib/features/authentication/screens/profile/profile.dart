import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E7D32),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFF2E7D32),
              padding: const EdgeInsets.only(bottom: 50.0),
              child: const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/other/profile_pic.jpg'),
                ),
              ),
            ),
            ListTile(
              title: Text('Takaslarım'),
              dense: true,
            ),
            ListTile(
              title: Text('Alacağım Takaslar'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Geçmiş Takaslar'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('İçerikler'),
              dense: true,
            ),
            ListTile(
              title: Text('Kaydettiklerim'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Ayarlar'),
              dense: true,
            ),
            ListTile(
              title: Text('Profil Bilgileri'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Şifreni Değiştir'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text('Hakkımda'),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Yardım',
                style: TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
