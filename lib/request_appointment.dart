import 'package:flutter/material.dart';

class RequestAppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Request Appointment")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Date and Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: "Date"),
              onTap: () {
                // Tambahkan kode untuk memilih tanggal
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Time"),
              onTap: () {
                // Tambahkan kode untuk memilih waktu
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kode untuk submit appointment
              },
              child: Text("Request Appointment"),
            ),
          ],
        ),
      ),
    );
  }
}
