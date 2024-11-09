import 'package:flutter/material.dart';

class TreatmentInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Treatment Info")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text("Dental Cleaning"),
            subtitle: Text("Detailed info about dental cleaning."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail perawatan
            },
          ),
          ListTile(
            title: Text("Teeth Whitening"),
            subtitle: Text("Detailed info about teeth whitening."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail perawatan
            },
          ),
          ListTile(
            title: Text("Cavity Filling"),
            subtitle: Text("Detailed info about cavity filling."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigasi ke detail perawatan
            },
          ),
        ],
      ),
    );
  }
}
