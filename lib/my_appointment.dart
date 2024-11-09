import 'package:flutter/material.dart';

class MyAppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Appointments")),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 5, // Ganti dengan jumlah appointment nyata
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Appointment #$index"),
              subtitle: Text("Date: 2024-11-10\nTime: 10:00 AM"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigasi ke detail appointment
              },
            ),
          );
        },
      ),
    );
  }
}
