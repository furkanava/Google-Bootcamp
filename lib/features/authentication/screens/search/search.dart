import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 3.0),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Aradığınız kitabı hemen bulun',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.book, color: Color(0xFF2E7D32)),
                suffixIcon: Icon(Icons.filter_list, color: Color(0xFF2E7D32)),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF2E7D32),
    );
  }
}
