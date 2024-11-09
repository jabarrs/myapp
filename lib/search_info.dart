import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Ganti dengan jumlah hasil pencarian nyata
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Search Result #$index"),
                    subtitle: Text("Description of search result #$index."),
                    onTap: () {
                      // Navigasi ke detail hasil pencarian
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
