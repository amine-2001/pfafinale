import 'package:e_healthpulse/doctor/ConnecteDoctorPage.dart';
import 'package:e_healthpulse/patient/ConnectePatientPage.dart'; // Correction ici
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Principal',
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void redirectTo(BuildContext context, String page) {
    if (page == 'Connecte') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConnecteDoctorPage()),
      );
    } else if (page == 'connectPatient') {
     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConnectePatientPage()), // Correction ici
      );    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-HealthPulse'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'E-HealthPulse',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: [
                        Color(0xFF76E0F2),
                        Color(0xFF94B9FF),
                        Color(0xFF76E0F2)
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF76E0F2),
                    Color(0xFF94B9FF),
                    Color(0xFF76E0F2),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => redirectTo(context, 'Connecte'),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/Doctor.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => redirectTo(context, 'connectPatient'),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'images/Patient.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
