import 'dart:async';
import 'dart:ui';
import 'package:e_healthpulse/patient/Header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeInfo(),
                        SliderSection(),

           HomeInfo2(),
HomeInfo5(),
            HomeInfo6(),
            HomeInfo3(),
            HomeInfo4(),
            HomeInfo1(),
          ],
        ),
      ),
    );
  }
}


class HomeInfo extends StatelessWidget {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Partner in Health and Wellness',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0097b2)),
                ),
                Text(
                  'We are committed to providing you with the best medical and healthcare services to help you live healthier and happier.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Action à effectuer lors de l'appui sur le bouton
                  },
                  child: Text('More details'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF0097B2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/home.png', height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class HomeInfo5 extends StatelessWidget {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/about0.png'),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
  flex: 2,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('images/about1.png', width: 50),
      Text(
        'About Us',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text(
        'ProHealth is a team of experienced medical professionals',
        style: TextStyle(fontSize: 12, color: Color(0xFF0097B2)),
      ),
      Text(
        'Dedicated to providing top-quality healthcare services. We believe in a holistic approach to healthcare that focuses on treating the whole person, not just the illness or symptoms.',
        style: TextStyle(fontSize: 10),
      ),
    ],
  ),
),

        ],
      ),
    );
  }
}


class HomeInfo6 extends StatefulWidget {
  @override
  _HomeInfo6State createState() => _HomeInfo6State();
}

class _HomeInfo6State extends State<HomeInfo6> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

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
      child: SizedBox(
        height: 500.0,
        child: PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: [
            _buildInfoContainer(
              'images/personne.png',
              'Patient-oriented',
              'By connecting to the needs and concerns of your patients, your medical website increases your visibility and that of your practice, informs your patient base and allows your patients to find and contact you more easily.',
            ),
            _buildInfoContainer(
              'images/tel.png',
              'Mobile Friendly',
              'Data shows that 30-40% of patients will view your website on a mobile device. We create responsive medical websites (responsive design) to offer visitors an optimal consultation experience that makes reading and navigation easier',
            ),
            _buildInfoContainer(
              'images/loop.png',
              'Expand your online presence',
              'We optimize the visibility of your website on search engines by improving your natural referencing in order to help your patients find you. Medical office website | dental website | dentists and specialists website',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContainer(String imagePath, String title, String description) {
    return Container(
      padding: EdgeInsets.all(16.0),
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
        borderRadius: BorderRadius.circular(10.0),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 50),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}


class HomeInfo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
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
                  boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
           SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/health0.png', width: 60),
                  Image.asset('images/health1.png', width: 60),
                  Image.asset('images/health2.png', width: 60),
                  Image.asset('images/health3.png', width: 60),
                ],
              ),
            ),
  
            
          ],
      ),
    );
  }
}
class HomeInfo3 extends StatelessWidget {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/psy.png', width: 43),
                  Image.asset('images/ped.png', width: 43),
                  Image.asset('images/neur.png', width: 43),
                  Image.asset('images/card.png', width: 43),
                  Image.asset('images/emer.png', width: 43),
                  Image.asset('images/gyn.png', width: 43),
                ],
              ),
            ),
            
            
          ],
      ),
    );
  }
}

class HomeInfo1 extends StatelessWidget {
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
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            

          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/home2.png', height: 100),
              ],
            ),
          ),
          SizedBox(width: 20),

          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(
                  'Don’t Let Your Health Take a Backseat!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0097b2)),
                ),
                Text(
                  'Schedule an appointment with one of our experienced medical professionals today!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                SizedBox(height: 30),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}

class HomeInfo2 extends StatelessWidget {
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
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            

          SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/icone1.png', width: 60),
                  Image.asset('images/icone2.png', width: 60),
                  Image.asset('images/icone3.png', width: 60),
                  Image.asset('images/icone4.png', width: 60),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}

class SliderSection extends StatefulWidget {
  @override
  _SliderSectionState createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 7), (Timer timer) {
      if (_controller.page == 4) {
        _controller.jumpToPage(0);
      } else {
        _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: PageView(
        controller: _controller,
        children: [
          SliderItem(
            title: 'Compassion',
            description: 'We understand that seeking medical care can be a stressful and emotional experience, and we strive to create a welcoming and supportive environment that puts our patients at ease and every one.',
            mainImagePath: 'images/compassion1.png',
            secondaryImagePath: 'images/compassion.png',
            backgroundColor: Color(0xFF0097b2),
          ),
          SliderItem(
            title: 'Excellence',
            description: 'We are committed to providing excellent medical care and services to our patients. We believe in continuously improving our skills, knowledge, and resources to ensure that we deliver the highest quality care possible.',
            mainImagePath: 'images/excellence0.png',
            secondaryImagePath: 'images/excellence.png',
            backgroundColor: Color(0xFF0097b2),
          ),
          SliderItem(
            title: 'Integrity',
            description: 'We believe in practicing medicine with integrity and honesty. We are transparent in our communication and decision-making processes, and we always put our patient\'s interests first & provide best solution.',
            mainImagePath: 'images/integrity0.png',
            secondaryImagePath: 'images/integrity.png',
            backgroundColor: Color(0xFF0097b2),
          ),
          SliderItem(
            title: 'Respect',
            description: 'We treat all individuals with respect and dignity, regardless of their background, beliefs, or circumstances. We believe that every person deserves to be treated with compassion and kindness.',
            mainImagePath: 'images/respect0.png',
            secondaryImagePath: 'images/respect.png',
            backgroundColor: Color(0xFF0097b2),
          ),
          SliderItem(
            title: 'Teamwork',
            description: 'We believe in working collaboratively with our team members and other healthcare professionals to provide comprehensive and effective care to our patients.',
            mainImagePath: 'images/teamwork0.png',
            secondaryImagePath: 'images/teamwork.png',
            backgroundColor: Color(0xFF0097b2),
          ),
        ],
      ),
    );
  }
}

class SliderItem extends StatefulWidget {
  final String title;
  final String description;
  final String mainImagePath;
  final String secondaryImagePath;
  final Color backgroundColor;

  const SliderItem({
    Key? key,
    required this.title,
    required this.description,
    required this.mainImagePath,
    required this.secondaryImagePath,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  _SliderItemState createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  bool _isBlur = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isBlur = !_isBlur;
        });
      },
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: widget.backgroundColor, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.mainImagePath,
                  width: 1000,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (_isBlur)
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
            if (_isBlur)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.secondaryImagePath,
                        width: 50,
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.title,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF0097b2)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.description,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.center,
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
}
