import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/splasgs/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnbordingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19.0,
      ),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splash1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splash2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splash3.png'),
          decoration: pageDecoration,
          footer: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text(
                'let\'s start',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(60),
                backgroundColor: Color(0xEEFE6969),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xEEFE6969),
        ),
      ),
      next: Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xEEFE6969),
        ),
      ),
      onSkip: () {},
      onDone: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xEEFE6969),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
