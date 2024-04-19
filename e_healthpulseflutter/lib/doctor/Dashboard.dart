import 'package:e_healthpulse/doctor/AddPatient.dart';
import 'package:e_healthpulse/doctor/Docteurs.dart';
import 'package:e_healthpulse/doctor/Header.dart';
import 'package:e_healthpulse/doctor/Patients.dart';
import 'package:e_healthpulse/doctor/Profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF76e0f2), // Couleur en haut
              Color(0xFF94b9ff), // Couleur au milieu
              Color(0xFF76e0f2), // Couleur en bas
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45.0), // Ajouter du padding en haut
              child: Header(), // Afficher la barre de navigation en haut avec du padding
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0), // Ajouter du padding en haut
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  padding: EdgeInsets.all(16.0),
                  children: [
                    buildDashboardItem(
                      title: 'Welcome!',
                      subTitle: 'Hello, DR X',
                      buttonText: 'Profile',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                    ),
                    buildDashboardItem(
                      title: 'Doctors',
                      subTitle: 'X Doctors Exist',
                      buttonText: 'View the doctor\'s list',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DocteursList()),
                        );
                      },
                    ),
                    buildDashboardItem(
                      title: 'Patients',
                      subTitle: 'X Patients Exist',
                      buttonText: 'View the Patient\'s list',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Patients()),
                        );
                      },
                    ),
                    buildDashboardItem(
                      title: 'Add Patient',
                      subTitle: 'New Patient',
                      buttonText: 'ADD',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddPatient()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardItem({
    required String title,
    required String subTitle,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF0097B2),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}
