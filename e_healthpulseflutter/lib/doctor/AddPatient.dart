import 'package:e_healthpulse/doctor/Header.dart';
import 'package:flutter/material.dart';

class AddPatient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                padding: const EdgeInsets.only(top: 45.0),
                child: Header(),
              ),
              SizedBox(height: 20), // Ajout d'un espace entre le Header et le formulaire
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MainContent(),
              ),
            ],
          ),
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
          Center( // Utilisation du widget Center pour centrer le texte horizontalement
            child: Text(
              'Add New Patient',
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Professional ID:',
              prefixIcon: Image.asset('images/IdIcone.png', width: 20),
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
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name:',
              prefixIcon: Image.asset('images/NameIcone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email:',
              prefixIcon: Image.asset('images/EmailIcone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password:',
              prefixIcon: Image.asset('images/PasswordIcone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'EEG Data:',
              prefixIcon: Image.asset('images/EegIcone.png', width: 20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0097B2)),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF0097B2)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'ECG Data:',
              prefixIcon: Image.asset('images/EsgIcone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'SPO2 Data :',
              prefixIcon: Image.asset('images/Spo2Icone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Clinical Report :',
              prefixIcon: Image.asset('images/RapportIcone.png', width: 20),
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Payment Type:',
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
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: 'Next Consultation :',
              prefixIcon: Image.asset('images/Date.png', width: 20),
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
           SizedBox(height: 20),

          Center( // Utilisation du widget Center pour centrer horizontalement le bouton
            child: ElevatedButton(
              onPressed: () {
                // TODO: Ajouter la fonctionnalité d'ajout de patient
              },
              child: Text('Add Patient'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xFF0097B2), // Couleur du texte du bouton
              ),
            ),
          ),
        ],
      ),
    );
  }
}
