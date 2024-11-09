import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'request_appointment.dart';
import 'my_appointment.dart';
import 'treatment.dart';
import 'search_info.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(icon, size: 50, color: Colors.black),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dental-It"),
        backgroundColor: Colors.blue.shade900,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: [
          // Bagian Logo
          Container(
            color: Colors.grey[200],
            height: 200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dental-clinic.jpg', // Ganti dengan path logo lokal Anda
                    height: 100,
                    width: 500,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor:
                              index == 1 ? Colors.blue : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),

          // Menu Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              children: [
                _buildMenuItem(
                  icon: FontAwesomeIcons.tooth,
                  label: "Request Appointments",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RequestAppointmentScreen()),
                    );
                  },
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.listCheck,
                  label: "My Appointments",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyAppointmentScreen()),
                    );
                  },
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.plusSquare,
                  label: "Treatment Info",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TreatmentInfoScreen()),
                    );
                  },
                ),
                _buildMenuItem(
                  icon: FontAwesomeIcons.search,
                  label: "Search",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
