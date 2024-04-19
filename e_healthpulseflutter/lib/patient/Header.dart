
import 'package:e_healthpulse/patient/Docteurs.dart';
import 'package:e_healthpulse/patient/Home.dart';
import 'package:e_healthpulse/patient/Profile.dart';
import 'package:flutter/material.dart';

class HeaderPatient extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<HeaderPatient> {
  bool _showProfileDetail = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
            Colors.white,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Gérer le clic sur l'image
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  'images/Patient.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
        
          IconButton(
            icon: Icon(Icons.menu,
                color: Color(0xFF0097B2)), // Utilisation de l'icône du menu
            onPressed: () {
              _showProfileDetail = !_showProfileDetail;
              if (_showProfileDetail) {
                _showProfileDialog1(context);
              }
            },
          ),
        ],
      ),
    );
  }

  

  void _showProfileDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                 
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Home()), // Navigation vers Home
                        );
                      },
                      child: Text('Home', style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                   
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Docteur()), // Navigation vers DocteursList
                        );
                      },
                      child: Text('View Doctor', style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProfilePatient()), // Navigation vers Patients
                        );
                      },
                      child: Text('Profile', style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
