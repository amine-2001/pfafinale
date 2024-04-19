import 'package:e_healthpulse/patient/Header.dart';
import 'package:flutter/material.dart';

class ProfilePatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF76e0f2),
              Color(0xFF94b9ff),
              Color(0xFF76e0f2),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add your header widget here
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: HeaderPatient(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: MainContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Patient Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),
          ProfileInfo(),

        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          // Use Row to display image and text together
          ProfileRow('images/NameIcone.png', 'Name:', 'nom de patient '),
          ProfileRow('images/EmailIcone.png', 'Email:', 'email de patient '),
          ProfileRow('images/PasswordIcone.png', 'pass:', 'mot de passe de patient '),
          ProfileRow('images/PayementIcone.png', 'paymentType:', 'type de payment '),
          ProfileRow('images/Date.png', 'nextconsultationDate:', 'date '),
                    SizedBox(height: 100),

        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String iconPath;
  final String label;
  final String text;

  ProfileRow(this.iconPath, this.label, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iconPath, width: 40, height: 40),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0097b2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
