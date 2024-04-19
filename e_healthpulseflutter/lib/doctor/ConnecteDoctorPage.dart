import 'package:e_healthpulse/doctor/Home.dart';
import 'package:e_healthpulse/doctor/InscrirePage.dart';
import 'package:flutter/material.dart';

class ConnecteDoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connecte Doctor'),
      ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Ajout d'un espace entre le Header et le formulaire
              MainContent(),
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
          SizedBox(height: 20),
          ProfileInfo(),
                    SizedBox(height: 100),

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

          Center(
            child: Image.asset(
              'images/Doctor.png',
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Login',
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
          SizedBox(height: 20),
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
            obscureText: true,
          ),
          SizedBox(height: 60),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()), // Navigation vers AddPatient
              );
                            },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF0097B2),
              ),
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              SizedBox(width: 5), // Ajouter un espace entre les deux textes
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Inscrire()),
                  );
                },
                child: Text(
                  'Sign up now',
                  style: TextStyle(
                    color: Color(0xFF0097B2),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
