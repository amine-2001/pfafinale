import 'package:e_healthpulse/doctor/Header.dart';
import 'package:flutter/material.dart';

class UpdateFees extends StatelessWidget {
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
          SizedBox(height: 20),
          Center(
            child: Text(
              'Update Fees',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 60),
          TextField(
            decoration: InputDecoration(
              labelText: 'Fees:',
              prefixIcon: Image.asset('images/PayementIcone.png', width: 20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0097B2)),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0097B2)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 60),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Action à effectuer lors de l'appui sur le bouton
              },
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF0097B2),
              ),
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}