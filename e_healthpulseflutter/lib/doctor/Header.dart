
import 'package:e_healthpulse/doctor/AddPatient.dart';
import 'package:e_healthpulse/doctor/ConnecteDoctorPage.dart';
import 'package:e_healthpulse/doctor/Dashboard.dart';
import 'package:e_healthpulse/doctor/Docteurs.dart';
import 'package:e_healthpulse/doctor/Home.dart';
import 'package:e_healthpulse/doctor/Patients.dart';
import 'package:e_healthpulse/doctor/Profile.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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
                  'images/Doctor.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.person,
                color: Color(
                    0xFF0097B2)), // Utilisation de l'icône de l'utilisateur
            onPressed: () {
              _showProfileDetail = !_showProfileDetail;
              if (_showProfileDetail) {
                _showProfileDialog(context);
              }
            },
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

  void _showProfileDialog(BuildContext context) {
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
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF0097b2),
                            width: 2.0,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/Doctor.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'X', // Remplacer par le nom du profil
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Profile()), // Navigation vers AddPatient
                        );
                      },
                      child: Text('Profile'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0097B2),
                        foregroundColor: Colors.white, // Couleur de texte
                       
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ConnecteDoctorPage()), // Navigation vers AddPatient
                        );
                      },
                      child: Text('Logout'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0097B2),
                        foregroundColor: Colors.white, // Couleur de texte
                        
                      ),
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
                                  Dashboard()), // Navigation vers Dashboard
                        );
                      },
                      child: Text('Dashboard', style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
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
                                  AddPatient()), // Navigation vers AddPatient
                        );
                      },
                      child: Text('Add Patient', style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DocteursList()), // Navigation vers DocteursList
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
                                  Patients()), // Navigation vers Patients
                        );
                      },
                      child: Text('View Patient', style: TextStyle(fontSize: 18, color: Colors.black)),
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
