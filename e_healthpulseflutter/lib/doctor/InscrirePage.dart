import 'package:e_healthpulse/doctor/ConnecteDoctorPage.dart';
import 'package:flutter/material.dart';

class Inscrire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscrire Doctor'),
      ),
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
        child: SingleChildScrollView(
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
            child: Image.asset(
              'images/Doctor.png',
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Registration',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 10),
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
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Specialty:',
              prefixIcon: Image.asset('images/specialityIcone.png', width: 20),
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
              labelText: 'Phone Number:',
              prefixIcon: Image.asset('images/PhoneIcone.png', width: 20),
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
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'Professional Address:',
              prefixIcon: Image.asset('images/AdresseIcone.png', width: 20),
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
              labelText: 'Country/Region :',
              prefixIcon: Image.asset('images/RegionIcone.png', width: 20),
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
              labelText: 'Professional ID :',
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
              labelText: 'Photo:',
              prefixIcon: Image.asset('images/ImageIcone.png', width: 20),
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
              labelText: 'Consultation Start Time :',
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
          TextField(
            decoration: InputDecoration(
              labelText: 'Consultation End Time :',
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
          TextField(
            decoration: InputDecoration(
              labelText: 'Fees :',
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
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement login functionality
              },
              child: Text('Add Doctor'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF0097B2),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              SizedBox(width: 5), // Ajouter un espace entre les deux textes
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ConnecteDoctorPage()),
                  );
                },
                child: Text(
                  'Log in now',
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
