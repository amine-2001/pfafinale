import 'package:e_healthpulse/doctor/Header.dart';
import 'package:e_healthpulse/doctor/UpdateFees.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Header(),
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
              'Doctor Profile',
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
          Center(
            child: Container(
              width: 150,
              height: 150,
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
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Use Expanded and Flexible for text wrapping and spacing
          ProfileRow('Name:', 'Dr. John Doe'),
          ProfileRow('Email:', 'john.doe@example.com'),
          ProfileRow('Speciality:', 'Cardiologist'),
          ProfileRow('Phone Number:', '+1234567890'),
          ProfileRow('Country / Region:', 'United States'),
          ProfileRow('Professional ID:', '1234567890'),
          ProfileRow('Consultation Hours:', '9:00 AM - 5:00 PM'),
          ProfileRow('Fees:', '\$100 per consultation'),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateFees()),
                );
              },
              child: Text('Update Fees'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF0097b2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String label;
  final String text;

  ProfileRow(this.label, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
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
                fontSize: 20,
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
